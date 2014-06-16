initialization
distributeExtensionEditorIDs
	self extensionEditors
		do: [:each | 	each assignmentEditorID: self assignmentEditorID. 
					each assignmentPartEditorID: self assignmentPartEditorID]