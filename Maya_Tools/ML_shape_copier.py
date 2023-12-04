"""
Drag & Drop this script into the Maya viewport to run the tool
Alternatively, execute __init__()
"""

from maya import cmds
import importlib

def get_curve_shapes_from_node(node):
	"""
		Function to return the shape nodes associated with a node.
		If a shape is passed to this function, the shape will be passed back. 

		Args:
			node (string) - string name for the shape

		Returns:
			None
	"""

	all_curve_shapes = []

	# If node is a transform, get it's associated shapes
	if cmds.objectType(node) == 'transform':
		# List all shape nodes connected
		all_shapes = cmds.listRelatives(node, shapes=True, fullPath=True)
		# if valid, iterate through the shapes
		if all_shapes:
			for shape in all_shapes:
				# Filter only nurbsCurve type nodes
				if cmds.objectType(shape) == 'nurbsCurve':
					# Append to all_curve_shapes to return
					all_curve_shapes.append(shape)
					
	# If node is already a shape, then continue
	elif cmds.objectType(node) == 'nurbsCurve':
		all_curve_shapes.append(node)
		
	# By this point, if curve shapes list is empty - then there isn't any. 
	if len(all_curve_shapes) == 0:
		return None
	
	return all_curve_shapes

def get_curve_information_from_node(node):
	"""
		Function will gather the curve information from a node's shapes.
		This will also work when provided a shape.
		If a shape is passed to this function, the shape will be passed back. 

		Args:
			node (string) - string name for the shape

		Returns:
			all_curve_info (list) - List of curve_info to rebuild a curve [cvs, curve_form, degrees]
	"""

	# Acquire all the shapes on the node
	all_curve_shapes = get_curve_shapes_from_node(node)

	# Array that will store the curve properties
	all_curve_info = []
	
	# If valid, iterate through each shape.
	if all_curve_shapes:
		for index, curve_shape in enumerate(all_curve_shapes):
			# Create a duplicate shape to begin to perform actions on
			# [0] on the cmds.duplicate() as the duplicate returns a list which we don't need.
			duplicate_node = cmds.duplicate(curve_shape)[0]

			# Acquire all duplicate shapes and store the current focus shape
			all_duplicate_shapes = cmds.listRelatives(duplicate_node, fullPath=True, shapes=True)
			current_duplicate_shape = all_duplicate_shapes[index]

			# Remove all the other non-focus shapes, as the cvs gathered can provide incorrect results if we do not do this
			duplicate_shapes_to_remove = all_duplicate_shapes
			duplicate_shapes_to_remove.remove(current_duplicate_shape)
			for shape in duplicate_shapes_to_remove:
				cmds.delete(shape)
			
			# Zero transforms to make the shape data relative
			all_attributes = ['translateX', 'translateY', 'translateZ']
			for attribute in all_attributes:
				cmds.setAttr(f'{duplicate_node}.{attribute}', 0)

			# Freeze transforms and delete history
			cmds.makeIdentity(duplicate_node, apply=True, t=1, r=1, s=1, n=0)
			cmds.delete(duplicate_node, constructionHistory=True)

			# Acquire information on the curve to rebuild it
			cvs = cmds.getAttr(f'{current_duplicate_shape}.cv[*]')
			curve_form = cmds.getAttr(duplicate_node + ".form")
			degrees = cmds.getAttr(duplicate_node + ".degree")

			# Cleanup
			cmds.delete(duplicate_node)

			# Store information & append to curve array
			curve_info = [cvs, curve_form, degrees]
			all_curve_info.append(curve_info)
	
	# If all_curve_info has entries, then return it.
	if len(all_curve_info) != 0:
		return all_curve_info
	else:
		return None

def apply_curve_from_info(target_node='node_name', all_curve_info=[[0,0,0]]):
	"""
		Function generate and attach a curve to the provided target_node.
		the all_curve_info is built from the get_curve_information_from_node() 

		Args:
			target_node (string) - string name for the target node to apply the shapes to.
			all_curve_info (list) - List of curve_info to rebuild a curve [cvs, curve_form, degrees]

		Returns:
			Nothing
	"""

	if all_curve_info:
		for cvs, curve_form, degrees in all_curve_info:
			# Build curve from curve data.
			new_curve = cmds.curve(point=cvs, degree=degrees)
			cmds.setAttr(new_curve + ".form", curve_form)
			if curve_form == 2:
				cmds.closeCurve(new_curve, preserveShape=False, replaceOriginal=True)

			# Move shape to target_node
			shapes = cmds.listRelatives(new_curve, shapes=True)
			for shape in shapes:
				cmds.parent(shape, target_node, relative=True, shape=True)

			# Cleanup
			cmds.delete(new_curve)

def copy_selected_shapes_to_last_selected():
	"""
		Function that will copy the curve information from the first selected nodes,
		then it will apply all shape nodes it finds to the last selected node.

		Args:
			None
		Returns:
			None
	"""
	# Check for selection, and if it is valid
	selected_nodes = cmds.ls(selection=True)
	if selected_nodes:
		# A length of two selection determines a source and destination
		if len(selected_nodes) >= 2:
			# Acquire the destination node (tail selection), and all the source nodes to check for shapes
			destination_node = cmds.ls(selection=True, tail=True)[0]
			source_nodes = selected_nodes[:-1]
			
			# Iterate through each source node to apply their shapes to the destination node.
			for node in source_nodes:
				all_curve_info = get_curve_information_from_node(node)
				apply_curve_from_info(target_node=destination_node, all_curve_info=all_curve_info)

			# Reselect original nodes for quality of life.
			cmds.select(selected_nodes)

			# Feedback to user upon completion of action.
			cmds.inViewMessage(assistMessage='<hl>Shapes copied!</hl>', position='midCenter', fade=True)
		else:
			cmds.confirmDialog(title='Error', message='Please select nodes! Select all the shapes you want, then click your destination last!')
	else:
		cmds.confirmDialog(title='Error', message='Please select nodes! Select all the shapes you want, then click your destination last!')


def reload_script():
	"""
		This function reloads the script automatically so updates are propagated into Maya.
	"""
	module_name = __name__
	module = importlib.import_module(module_name)
	importlib.reload(module)

def __init__():
	copy_selected_shapes_to_last_selected()

def onMayaDroppedPythonFile(*args):
	reload_script()
	__init__()