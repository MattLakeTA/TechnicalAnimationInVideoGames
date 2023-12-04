"""
Drag & Drop this script into the Maya viewport to run the tool
Alternatively, execute __init__()
"""

from maya import cmds
import importlib, ast

def get_definition(input):
	"""
		Simple consolidated function that returns specific information such as window frame width, shared names etc
		This single function will drive the customisable elements of the tool rather than searching for variables in scattered functions.

		Args:
			input (string) - What you are looking for, example; get_definition('window_picker_label')  

		Returns:
			definition value (str/int) - Returned dictonary value, such as 300, 'colour_marker' etc.
			
	"""

	definitions = {
	'window_name' : 'ml_colour_marker',
	'window_title' : 'ML Colour Marker',
	'window_frame_width' : 300,
	'window_frame_height' : 203,
	'window_picker_label' : 'colorSliderGrp_colour_picker',
	'window_presets_per_row': 10,
	'window_presets_height': 75,
	'window_layout_presets' : 'rowColumnLayout_presets',
	'window_layout_picker' : 'rowColumnLayout_picker',
	'window_checkbox_outliner' : 'checkbox_outliner',
	'window_checkbox_viewport' : 'checkbox_viewport',
	'optionVar_colour_presets' : 'ML_colour_marker_presets',
	'optionVar_colour_picker_last_colour' : 'ML_colour_marker_last_colour',
	}
	return definitions[input]

def window_setup():
	"""
		Master function for generating the ML Colour Marker window.
		Call this to run the tool!

		Args:
			None

		Returns:
			None
	"""

	window = window_create(
							window_name=get_definition('window_name'),
							title=get_definition('window_title'),
							frame_width=get_definition('window_frame_width'),
							frame_height=get_definition('window_frame_height')
						)
	window_content(window)
	cmds.showWindow(window)

def window_create(window_name='', title='', frame_width=250, frame_height=250):
	"""
		Creates and returns a Maya window based on input flags
		This does not display the window; cmds.showWindow(window) will show the window!

		Args:
			window_name (string) - string name for the window, this is an under the hood name. Not visible to user.
			title (string) - string name for the window that is user facing. This will appear on the toolbar.
			frame_width (int) - integer for desired width of the windows in pixels.
			frame_height (int) - interger for the desired height of the window in pixels.

		Returns:
			floatingWindow: window generated from cmds.window()
	"""
	if cmds.window(window_name, exists=True):
		cmds.deleteUI(window_name)

	window = cmds.window(
						window_name,
						title=title,
						iconName=title,
						width=frame_width,
						height=frame_height,
						resizeToFitChildren=False,
						sizeable=False
						)
	cmds.window(
				window_name,
				edit=True,
				widthHeight=(frame_width, frame_height)
				)

	return window

def window_content(window):
	"""
		Creates user interface content that should be attached a window made with cmds.window()
		Interface content is for the ML Colour Marker.

		Args:
			window (floatingWindow) - window generated from cmds.window()

		Returns:
			None
	"""

	# Dynamically get window width to scale UI throughout function.
	frame_width = cmds.window(window, query=True, width=True)

	# Master layout to hold content in.
	layout_master = cmds.columnLayout(adjustableColumn=True)

	# Presets Interface - Save / Load / Undo
	width_save_load_undo = frame_width/3
	cmds.rowLayout(
					numberOfColumns=3,
					columnWidth3=( (width_save_load_undo,) * 3 ),
					parent=layout_master
					)
	cmds.iconTextButton(
						style='iconOnly', 
						image1='save.png',
						align='center',
						flat=False,
						width=width_save_load_undo,
						annotation='Save colour preset for later use',
						command=lambda*_:save_preset(
													colour=get_picker_colour(
																			picker=get_definition('window_picker_label')
																			)
													)
						)
	cmds.iconTextButton(
						style='iconOnly',
						image1='delete.png',
						align='center',
						flat=False,
						width=width_save_load_undo,
						annotation='Delete selected colour preset',
						command=lambda*_:delete_preset(
														colour=get_picker_colour(
																				picker=get_definition('window_picker_label')
																				)
													)
						)
	cmds.iconTextButton(
						style='iconOnly',
						image1='undo_s.png',
						align='center',
						flat=False,
						width=width_save_load_undo,
						annotation='Reset the tool back to factory settings.',
						command=lambda*_:reset_settings(),
						)

	# Presets Interface - Preset buttons
	# preset_per_row defines how many preset colours are on a row. Default 10.
	# Change to a lower number if you want bigger buttons
	preset_per_row = get_definition('window_presets_per_row')
	cmds.scrollLayout(
						height=get_definition('window_presets_height'),
						width=frame_width,
						parent=layout_master
					)
	cmds.rowColumnLayout(
						get_definition('window_layout_presets'),
						width=frame_width-20,
						numberOfColumns=preset_per_row
						)
	window_preset_buttons(
						parent=get_definition('window_layout_presets')
						)

	# Colour Picker
	# Utilise a colorSliderGrp and remove the slider to get a nicer version of the cmds.colorEditor()
	cmds.rowColumnLayout(
						get_definition('window_layout_picker'),
						numberOfColumns=2,
						parent=layout_master
						)
	cmds.colorSliderGrp(
						get_definition('window_picker_label'),
						columnWidth2=[frame_width*.85,0],
						parent=get_definition('window_layout_picker'),
						annotation='Colour picker - click me to change colour!',
						changeCommand=lambda*_:set_user_preference_last_colour(
																				colour=get_picker_colour(
																										picker=get_definition('window_picker_label')
																										)
																				)
						)

	# Colour Picker - Get initial colour from presets and apply to colour picker.
	set_picker_colour(
					colour=get_last_colour(),
					picker=get_definition('window_picker_label')
					)

	# Colour Picker - Eye dropper button to allow user to get colour from selected object
	cmds.iconTextButton(
						style='iconOnly',
						image1='eyeDropper.png',
						align='center',
						flat=False,
						label='Get Colour From Selected',
						annotation='Retrieve colour from first selected.',
						width=frame_width*.1,
						parent=get_definition('window_layout_picker'),
						command=lambda*_:set_picker_colour(
															colour=get_colour_from_selected(),
															picker=get_definition('window_picker_label')
															),			
						)

	# Apply colour button
	cmds.iconTextButton(
						style='iconAndTextVertical',
						image1='colorProfile.png',
						align='center',
						label='Apply Colour To Selection',
						height=60,
						parent=layout_master,
						annotation='Click me to apply colours to the selected',
						flat=False,
						command=lambda*_:apply_colour(
												colour=get_picker_colour(
																		picker=get_definition('window_picker_label')
																		),
												apply_viewport=cmds.checkBox(get_definition('window_checkbox_viewport') , query=True, value=True),
												apply_outliner=cmds.checkBox(get_definition('window_checkbox_outliner'), query=True, value=True)
												)
						)

	# Application settings - apply to outliner and/or viewport
	cmds.rowLayout(
					numberOfColumns=3,
					columnWidth3=( (frame_width/3,)*3 ),
					parent=layout_master
					)
	cmds.text(label='    Apply to -')
	cmds.checkBox(get_definition('window_checkbox_outliner'), label='Outliner', value=True) 
	cmds.checkBox(get_definition('window_checkbox_viewport') , label='Viewport', value=True)

def window_preset_buttons(parent=''):
	"""
		Function that will generate a series of coloured buttons based on the user preferences saved colours.
		If interface already exists, it will delete the UI and rebuild it.

		Args:
			parent (string) - string name of rowColumnLayout that the preset buttons should be attached to

		Returns:
			None
	"""
	# First, clear out any existing UI; if it exists.
	## Get all UI children elements from the rowColumnLayout that holds the presets
	all_children_ui = cmds.rowColumnLayout(parent, query=True, childArray=True)

	## If the array is valid, delete all the UI elements to begin the rebuild process
	if all_children_ui:
		cmds.deleteUI(all_children_ui)

	# Second, build new UI based on user saved presets
	## Query user preferences to get the saved preset colours
	user_colour_presets = get_user_preference_preset_colours()

	## If valid, iterate through colours and create a new button for each preset colour.
	if user_colour_presets:
		for colour_preset in user_colour_presets:
			window_button_colour_preset(colour_preset)

def window_button_colour_preset(colour=(0,0,0)):
	"""
		Function that will generate a a coloured button.

		Args:
			colour (tuple): RGB color value.

		Returns:
			None
	"""

	# Dynamically acquire the amount of preset_divisions (column count) & frame width from the rowColumnLayout parent
	# This is instead of passing through variables to functions for scale, it can get the information automatically
	# The column count & width are used to scale the buttons dynamically.
	preset_per_row = cmds.rowColumnLayout(get_definition('window_layout_presets'), query=True, numberOfColumns=True)
	frame_width =  cmds.rowColumnLayout(get_definition('window_layout_presets'), query=True, width=True)

	# Create the button with functionality to apply the colour to the picker.
	cmds.button(
				label='',
				width=frame_width/preset_per_row,
				backgroundColor=colour,
				parent=get_definition('window_layout_presets'),
				c=lambda*_:set_picker_colour(
											picker=get_definition('window_picker_label'),
											colour=colour
											),
				annotation=f'Colour Preset; {colour}'
				)

def get_last_colour():
	"""
		This will return the user value for the last colour they had when using the tool.
		If there is no preference for this, it will return an initial colour

		Returns:
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)
	"""

	# Checks if there is an optionVar for a stored previous last colour, if none exist just generate one
	last_colour_label = get_definition('optionVar_colour_picker_last_colour')
	if cmds.optionVar(exists=last_colour_label) == True:
		colour = cmds.optionVar(query=last_colour_label)
		# optionVar stores tuple as a string, so we need to convert it back to a tuple.
		colour = ast.literal_eval(colour)
	else:
		colour = (0, 0.5, 0.5)

	return colour

def apply_colour(colour=(0,0,0), apply_viewport=True, apply_outliner=True):
	"""
		This will apply an inputted colour to all the selected nodes.
		Flags determine the colour and if it is applied in viewport and outliner

		Args:
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)
			apply_viewport (bool) - Applies colour to viewport
			apply_outliner (bool) - Applies colour to outliner

		Returns:
			None
	"""

	# Get selected nodes, if valid, iterate through each node.
	selected_nodes = cmds.ls(sl=True)
	if selected_nodes:
		for node in selected_nodes:
			# Apply colours to viewport and/or outliner for selected
			if apply_viewport == True:
				apply_viewport_colour(node, colour)
			if apply_outliner == True:
				apply_outliner_colour(node, colour)

			# If the node has shapes connected, apply colour to the shapes too.
			node_shapes = cmds.listRelatives(node, shapes=True)
			if node_shapes:
				for shape in node_shapes:
					if apply_viewport == True:
						apply_viewport_colour(shape, colour)
					if apply_outliner == True:
						apply_outliner_colour(shape, colour)
	else:
		cmds.confirmDialog(title='Error', message='Select a node please.')

def apply_viewport_colour(node, colour=(0,0,0)):
	"""
		This will apply colour to any node in the viewport

		Args:
			node (string) - Any scene node name
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)

		Returns:
			None
	"""

	#cmds.color(node, rgbColor=colour)
	cmds.setAttr(f'{node}.overrideEnabled', True)
	cmds.setAttr(f'{node}.overrideRGBColors', True)
	cmds.setAttr(f'{node}.overrideColorRGB', colour[0], colour[1], colour[2])

def apply_outliner_colour(node, colour=(0,0,0)):
	"""
		This will apply colour to any node in the outliner

		Args:
			node (string) - Any scene node name
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)

		Returns:
			None
	"""

	cmds.setAttr(f'{node}.useOutlinerColor', True)
	cmds.setAttr(f'{node}.outlinerColor', colour[0], colour[1], colour[2] )

def get_picker_colour(picker=''):
	"""
		This will return the colour picker colour in normalized RGB format

		Args:
			picker (string) - string name of the colorSliderGrp UI element

		Returns:
			colour (tuple)r - Normalized RGB value (0-1); example (1,0,1)
	"""
	# Acquires the colorSliderGrp's rgb attribute, ensuring it's a tuple, then returning it.
	colour = cmds.colorSliderGrp(picker, query=True, rgb=True)
	colour = tuple(colour)
	return colour

def set_picker_colour(colour=(0,0,0), picker=''):
	"""
		This will set the UI picker's colour

		Args:
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)
			picker (string) - string name of the colorSliderGrp UI element

		Returns:
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)
	"""
	# If colour is valid, set it to the colorSliderGrp, then update the user preferences of the last colour.
	if colour:
		cmds.colorSliderGrp(picker, edit=True, rgb=colour)
		set_user_preference_last_colour(colour)
					
def get_colour_from_selected():
	"""
		This will acquire, and return the colour from the first selected node.
		The user is prompted if they want to take the colour from the viewport or outliner

		Args:
			None

		Returns:
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)
	"""
	# Acquire all selected nodes, if they are valid continue
	selected_nodes = cmds.ls(sl=True)
	if selected_nodes:
		# Get the first node's outlinerColor attribute value
		node = selected_nodes[0]

		# Check outliner colour / viewport colour, if they are not the same, then query user which they want to use
		outliner_colour = cmds.getAttr(f'{node}.outlinerColor')
		viewport_colour = cmds.getAttr(f'{node}.overrideColorRGB')

		if outliner_colour != viewport_colour:
			# Prompt user if they want the colour from the outliner or the viewport colour
			option = cmds.confirmDialog( title='Please Confirm', message='Where would you like to pick colour from?', button=['Outliner','Viewport','Cancel'], defaultButton='Cancel', cancelButton='Cancel')

			if option == 'Outliner':
				colour = cmds.getAttr(f'{node}.outlinerColor')
			elif option == 'Viewport':
				colour = cmds.getAttr(f'{node}.overrideColorRGB')
			else:
				return
		else:
			colour = outliner_colour

		# If the color is returned as a list, extract the first element
		if type(colour) == list:
			colour = colour[0]

		return colour
	else:
		cmds.confirmDialog(title='Error', message='Select a node please.')
		return None

def get_user_preference_preset_colours():
	"""
		This will acquire, and return the saved preset colours from user preferences

		Args:
			None

		Returns:
			list: user_colour_presets_as_list is a array of tuples containing normalized colours.
					Example [(1,0,1),(1,1,1),(0,0,0)]
	"""

	user_preference_label = get_definition('optionVar_colour_presets')

	# If optionVar does not exist, add a new entry with several starting presets
	if cmds.optionVar(exists=user_preference_label) == False:
		default_colour_presets = [
								(1.0, 0.0, 0.0), (0.0, 1.0, 0.0), (0.0, 0.0, 1.0), (1.0, 1.0, 0.0), (1.0, 0.0, 1.0), 
								(0.0, 1.0, 1.0), (0.0, 0.0, 0.0), (1.0, 0.5, 0.0), (0.5, 0.0, 1.0), (0.0, 1.0, 0.5), 
								(0.5, 0.5, 0.5), (1.0, 0.5, 0.5), (0.5, 1.0, 0.0), (0.0, 0.5, 1.0),
								]
		cmds.optionVar(stringValue=(user_preference_label, str((1,1,1))))

		for colour_preset in default_colour_presets:
			cmds.optionVar(stringValueAppend =(user_preference_label, str(colour_preset)))

	# Return the user presets 
	user_colour_presets = cmds.optionVar(query=user_preference_label)

	# Convert list in string format back to list type
	user_colour_presets_as_list = []
	for colour_preset in user_colour_presets:
		# optionVar stores tuple as a string, so we need to convert it back to a tuple.
		colour_preset = ast.literal_eval(colour_preset)
		user_colour_presets_as_list.append(colour_preset)

	# Validate data, if non-tuples or colours with non-3 RGB values will be removed from settings.
	for index, colour_preset in enumerate(user_colour_presets_as_list):
		if len(colour_preset) != 3:
			cmds.optionVar(removeFromArray =(user_preference_label, index))
		
	# Return complete data
	return user_colour_presets_as_list

def set_user_preference_last_colour(colour=(0,0,0)):
	"""
		This set the user preference for the last colour.
		This is used when the tool re-opens to save the last colour. 

		Args:
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)

		Returns:
			None
	"""
	cmds.optionVar(stringValue=(get_definition('optionVar_colour_picker_last_colour'), str(colour)))

def save_preset(colour=(0,0,0)):
	"""
		Saves a colour as a preset.
		This is stored as a user preference to persist across Maya scenes.
		This function also populates the UI buttons.

		Args:
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)

		Returns:
			None
	"""
	user_preference_label = get_definition('optionVar_colour_presets')

	# First check if this preset already exists, we don't want duplicates
	all_existing_presets = get_user_preference_preset_colours()

	if colour not in all_existing_presets:
		# Save preset and add the UI element
		cmds.optionVar(stringValueAppend =(user_preference_label, str(colour)))
		window_preset_buttons(parent=get_definition('window_layout_presets'))
	else:
		# If the preset already exists, notify the user.
		cmds.confirmDialog(title='Preset', message='Preset already exists!')

def delete_preset(colour=(0,0,0)):
	"""
		Deletes a colour preset.
		This function removes the preset that is stored as a user preference.
		This function also removes the UI button for the preset. 

		Args:
			colour (tuple) - Normalized RGB value (0-1); example (1,0,1)

		Returns:
			None
	"""
	user_preference_label = get_definition('optionVar_colour_presets')

	# First check if this preset already exists, we do not want to delete it if it does not exist.
	all_existing_presets = get_user_preference_preset_colours()

	if colour in all_existing_presets:
		# If it does exist, remove the index containing the preset and regenerate the UI.
		index = all_existing_presets.index(colour)
		cmds.optionVar(removeFromArray =(user_preference_label, index))
		window_preset_buttons(parent=get_definition('window_layout_presets'))
	else:
		# If the preset does not exist, notify the user they are trying to delete something that does not exist.
		cmds.confirmDialog(title='Preset', message='Preset does not exist!')

def reset_settings():
	"""
		This queries the user what action they want to perform to the settings.
		Do they want to reset the tool back to factory settings, then it will store it's initial state, resetting the user prefs.
		Alternatively, they can delete all presets as a quality of life feature to delete all presets.

		Args:
			None

		Returns:
			None
	"""

	# Prompt user with choice to factory reset or delete all presets
	option = cmds.confirmDialog( title='Please Confirm', message='What would you like to do?', button=['Factory Reset','Delete All Presets','Cancel'], defaultButton='Cancel', cancelButton='Cancel')

	# If factory reset, delete the user preferences and rebuild the UI.
	if option == 'Factory Reset':
		cmds.optionVar(remove=get_definition('optionVar_colour_presets'))
		cmds.optionVar(remove=get_definition('optionVar_colour_picker_last_colour')) 
		window_preset_buttons(parent=get_definition('window_layout_presets'))

	# If delete all presets, then delete all presets :) 
	if option == 'Delete All Presets':
		user_colour_presets = get_user_preference_preset_colours()

		if user_colour_presets:
			for colour_preset in user_colour_presets:
				delete_preset(colour_preset)

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
	window_setup()

def onMayaDroppedPythonFile(*args):
	reload_script()
	__init__()