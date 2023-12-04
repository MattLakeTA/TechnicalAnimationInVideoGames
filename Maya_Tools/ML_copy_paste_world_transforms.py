"""
Drag & Drop this script into the Maya viewport to run the tool
Alternatively, execute __init__()
"""

from maya import cmds
import importlib

def copy_transforms():
	"""
	Acquires and stores the world transforms of the first selected node.
	Transforms are stored in a global xform_transforms
	Index 0 is translation, index 1 is rotation.
	"""

	# Sanity check there is selected nodes before continuing
	selection = cmds.ls(selection=True)
	if not selection:
		cmds.confirmDialog(title='Error', message='Select a node please.')
		return
	
	# If selection is valid, copy xform translation / rotation from first node.
	if selection:
		translations = cmds.xform(selection[0], query=True, worldSpace=True, translation=True)
		rotations = cmds.xform(selection[0], query=True, worldSpace=True, rotation=True)

		# global variable will exist outside of the scope of this function.
		global xform_transforms
		xform_transforms = [translations, rotations]

		# Feedback to user
		cmds.inViewMessage(assistMessage=f'Transforms copied!', position='midCenter', fade=True)
	else:
		cmds.confirmDialog(title='Error', message='Select a node please.')
			
def paste_transforms():
	"""
	Applies world transforms from the global xform_transforms to all selected nodes
	Index 0 is translation, index 1 is rotation.
	"""

	# Sanity check if transforms have been copied
	if xform_transforms is None:
		cmds.confirmDialog(title='Error', message='Please copy some transforms first')
		return

	# Acquire selected nodes
	selection = cmds.ls(selection=True)

	# If selection is valid, iterate through their nodes
	if selection:
		for node in selection:
			# Apply global xform_transforms; index 0 is translations, index 1 is rotations
			cmds.xform(node, worldSpace=True, translation=xform_transforms[0] )
			cmds.xform(node, worldSpace=True, rotation=xform_transforms[1])

			# Feedback to user
			cmds.inViewMessage(assistMessage=f'Transforms pasted!', position='midCenter', fade=True)
	else:
		cmds.confirmDialog(title='Error', message='Select some nodes please.')


def copy_or_paste_transforms():
	"""
	Prompts user with a dialog to choose between copying or pasting world transforms.
	This then calls copy_transforms() or paste_transforms()
	"""

	# Sanity check there is selected nodes before prompting user
	selection = cmds.ls(selection=True)
	if not selection:
		cmds.confirmDialog(title='Error', message='Select a node please.')
		return

	# Provides user with prompt to choose copy or paste
	choice = cmds.confirmDialog(
							title='Chooser',
							message='What would you like to do?',
							button=[
									'Copy Transforms',
									'Paste Transforms',
									'Cancel'
									],
							defaultButton='Cancel',
							cancelButton='Cancel'
							)

	if choice == 'Copy Transforms':
		copy_transforms()
	elif choice == 'Paste Transforms':
		paste_transforms()
	else:
		return

def reload_script():
	"""
		This function reloads the script automatically so updates are propagated into Maya.
	"""
	module_name = __name__
	module = importlib.import_module(module_name)
	importlib.reload(module)

def __init__():
	copy_or_paste_transforms()

def onMayaDroppedPythonFile(*args):
	reload_script()
	__init__()
