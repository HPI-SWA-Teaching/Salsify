rendering
renderExtensionEditorsContainerOn: html
	self assignmentPart isEmpty 
		ifFalse: [html div class: 'extensionEditor';
					id: 'extensionEditors', self assignmentEditorID asString, '.', self assignmentPartEditorID asString;
					with: [self renderExtensionEditorsOn: html]]