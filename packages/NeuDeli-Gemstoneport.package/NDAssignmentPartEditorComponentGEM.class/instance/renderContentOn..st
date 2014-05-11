as yet unclassified
renderContentOn: html
	html textInput
			onChange: (html scriptaculous updater
									id: 'assignmentPartEditors', self assignmentEditorID asString;
									callback: [:render | self parent renderAssignmentPartEditorsOn: render];
									triggerForm: 'assignmentEditorForm';
									onStatus: 200 do: 'saveNotification("assignmentEditorForm");clickHack();');
			value: self assignmentPart title;
			callback: [:value | self validateAssignmentPartTitle: value].
	self assignmentPart isEmpty 
		ifFalse: [html div class: 'extensionEditor';
					id: 'extensionEditors', self assignmentEditorID asString, '.', self assignmentPartEditorID asString;
					with: [self renderExtensionEditorsOn: html]]