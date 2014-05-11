as yet unclassified
distributeAssignmentPartEditorIDs
	| assignmentPartEditorID |
	assignmentPartEditorID := 0.
	self assignmentPartEditors
		do: [:each | each assignmentEditorID: self assignmentEditorID. 
					each assignmentPartEditorID: assignmentPartEditorID. 
					assignmentPartEditorID := assignmentPartEditorID + 1.
					each resetExtensionEditors]