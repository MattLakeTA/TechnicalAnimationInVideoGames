"""
Drag & Drop this script into the Maya viewport to run the tool
Alternatively, execute __init__()
"""

from maya import cmds
import importlib

def set_is_historically_interesting_on_connections(set_value=False):
	"""
	Disables isHistoricallyInteresting on connections and connections of connections of the selected nodes when the function is ran.
	This will remove their display from been visible in the channel box. 

	Args:
		value_to_set (bool): determines the isHistoricallyInteresting state applied. False will set it to False, True to True. 
	"""
	MAX_LOOP_ITERATIONS = 3
	
	selected_nodes = cmds.ls(selection=True, long=True)
	
	if selected_nodes:
		# First, perform a loop to iterate through connections & connections of connections.
		current_nodes = selected_nodes

		for _ in range(MAX_LOOP_ITERATIONS):
			new_connections = []

			# Iterate through each item in the current_nodes array
			for current_node in current_nodes:
				# Get connections of the current node
				connections = cmds.listConnections(current_node, skipConversionNodes=True, source=True, destination=True)
				if connections:
					# Remove duplicates from set
					connections = list(set(connections))
					# Disable isHistoricallyInteresting on each connection to remove it from the channel box
					for connection in connections:
						cmds.setAttr(f"{connection}.isHistoricallyInteresting", set_value)

						# Add the connection to the list for the next iteration.
						new_connections.append(connection)

			# Pass new connections to the current nodes for next iteration. 
			current_nodes = new_connections

		# Second, also disable historically interesting on relatives
		all_relatives = cmds.listRelatives(selected_nodes, fullPath=True)
		if all_relatives:
			for relative in all_relatives:
				cmds.setAttr(relative + ".isHistoricallyInteresting", set_value)
		
		# Reset original nodes to visually update the channel box without a reselect.
		cmds.select(selected_nodes)

		# Feedback to user upon completion of action.
		cmds.inViewMessage(assistMessage=f'isHistoricallyInteresting set to <hl>{set_value}</hl>.', position='midCenter', fade=True)
	else:
		# Notify user nothing is selected
		cmds.confirmDialog(title='Error', message='Please select nodes to apply this function to.')

def reload_script():
	"""
		This function reloads the script automatically so updates are propagated into Maya.
	"""
	module_name = __name__
	module = importlib.import_module(module_name)
	importlib.reload(module)

def __init__():
	set_is_historically_interesting_on_connections()

def onMayaDroppedPythonFile(*args):
	reload_script()
	__init__()