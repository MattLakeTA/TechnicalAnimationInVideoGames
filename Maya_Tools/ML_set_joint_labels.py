"""
Drag & Drop this script into the Maya viewport to run the tool
Alternatively, execute __init__()
"""

from maya import cmds
import importlib

def set_joint_labels():
	"""
		This sets joint label attributes (side, type, label) on all joints in the scene.
		The script automatically detects for an affix whether it is a suffix or a prefix, and denotes left/right/center.
		New affixes can be added in the left_affix and right_affix arrays.
	"""

	# affixes for left and right; add new ones here to populate the system
	left_affix = ['l', 'left']
	right_affix = ['r', 'right']
	all_affixes = left_affix + right_affix

	# Iterate through each joint to set joint labels
	all_joints = cmds.ls(type='joint')
	for joint in all_joints:
		joint_label = joint

		# Setup variables that we will alter shortly
		has_affix = False
		has_suffix = True
		has_right_affix = False

		# Split joint label into individual chunks based on underscores
		joint_label_components = joint_label.split('_')

		# First check if the label uses a prefix
		first_joint_label_component = joint_label_components[0].lower()

		if first_joint_label_component in all_affixes:
			has_affix = True
			has_suffix = False
			
			# Detect if left/right side is in the first component
			has_right_affix = first_joint_label_component in right_affix

			# Remove prefix from joint label to apply later
			joint_label = joint_label.partition('_')[2]
				
		# Now check if the label utilises a saffix instead.
		# Do not run the check if has_suffix is False, as the prefix check has already detected a prefix.
		if has_suffix:
			last_joint_label_component = joint_label_components[-1].lower()
			
			if last_joint_label_component in all_affixes:
				has_affix = True
				has_suffix = True
				
				# Detect if left/right side is in the last component
				has_right_affix = last_joint_label_component in right_affix

				# Remove saffix from joint label to apply later
				joint_label = joint_label.rpartition('_')[0]

		# Set Joint Label Side attribute. Center joints 0, left 1, right 2.
		JOINT_SIDE_CENTER, JOINT_SIDE_LEFT, JOINT_SIDE_RIGHT = 0, 1, 2

		if has_affix == False:
			cmds.setAttr(joint+'.side', JOINT_SIDE_CENTER)
		else:
			if has_right_affix == True:
				cmds.setAttr(joint+'.side', JOINT_SIDE_RIGHT)
			else:
				cmds.setAttr(joint+'.side', JOINT_SIDE_LEFT)
			
		# Set Joint Label Type to Other/18 so we can add a custom name entry
		JOINT_TYPE_OTHER = 18
		cmds.setAttr(joint+'.type', JOINT_TYPE_OTHER)
		
		# Set Joint label	
		cmds.setAttr(joint+'.otherType', joint_label, type="string")

	# Feedback to user upon completion of action.
	cmds.inViewMessage(assistMessage='<hl>Joint Labels Applied!</hl>', position='midCenter', fade=True)

def reload_script():
	"""
		This function reloads the script automatically so updates are propagated into Maya.
	"""
	module_name = __name__
	module = importlib.import_module(module_name)
	importlib.reload(module)

def __init__():
	set_joint_labels()

def onMayaDroppedPythonFile(*args):
	reload_script()
	__init__()