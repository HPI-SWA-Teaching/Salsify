as yet unclassified
distributeAssignmentEditorIDs
	| assignmentEditorID |
	assignmentEditorID := 0.
	self assignmentEditors 
		do: [:each | each assignmentEditorID: assignmentEditorID. 
					assignmentEditorID := assignmentEditorID + 1.
					each course: self course]