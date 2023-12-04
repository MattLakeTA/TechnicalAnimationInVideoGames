"""
Drag & Drop this script into the Maya viewport to run the tool
Alternatively, execute __init__()
"""

from maya import cmds
import importlib

def set_move_skinned_joints_mode(set_mode=True):
	"""
		Toggles the moveJointsMode feature on all skinClusters, allowing you to move all skinned joints without affecting the skinning
		
		Args:
			set_mode (boolean) - Determines whether Move Skinned Joints mode is enabled or disabled.

		Returns:
			Nothing
	"""
	# Acquire all skin clusters to iterate through and set the MoveJointsMode attribute
	all_skin_clusters = cmds.ls(type='skinCluster')
	if all_skin_clusters:
		for skin_cluster in all_skin_clusters:
			cmds.skinCluster(skin_cluster, edit=True, moveJointsMode=set_mode )
			
	# Feedback to user upon completion of action.
	cmds.inViewMessage(assistMessage=f'Move Skinned Joints Mode set to <hl>{set_mode}</hl>', position='midCenter', fade=True)

def reload_script():
	"""
		This function reloads the script automatically so updates are propagated into Maya.

		Args:
		Returns:
	"""
	module_name = __name__
	module = importlib.import_module(module_name)
	importlib.reload(module)

def __init__():
	"""
		init function to allow the user to choose between enabling or disabling Move Skinned Joints mode.

		Args:
			set_mode (boolean) - Determines whether Move Skinned Joints mode is enabled or disabled.

		Returns:
			Nothing
	"""

	# Prompt user if whether they want to enable to disable the tool
	option = cmds.confirmDialog(
								title='Choose',
								message='Would you like to enable or disable the Move Skinned Joints mode?',
								button=['Enable', 'Disable', 'Cancel'],
								defaultButton='Cancel',
								cancelButton='Cancel'
								)

	if option == 'Enable':
		set_move_skinned_joints_mode(set_mode=True)
	elif option == 'Disable':
		set_move_skinned_joints_mode(set_mode=False)

def onMayaDroppedPythonFile(*args):
	reload_script()
	__init__()
