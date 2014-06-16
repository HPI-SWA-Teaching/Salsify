rendering
renderContentOn: html
	html textInput
		class: 'extensionInput'; 
		onChange: (html scriptaculous updater
							id: 'extensionEditors', self assignmentEditorID asString, '.', self assignmentPartEditorID asString;
							callback: [:render | self parent renderExtensionEditorsOn: render];
							triggerForm: 'assignmentEditorForm';
							onStatus: 200 do: 'saveNotification("assignmentEditorForm");clickHack();');
		value: self extension;
		callback: [:value | self validateExtension: value]