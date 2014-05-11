as yet unclassified
addGroupEditorForGroup: aGroup
	self groupEditors add: (NDGroupEditComponent new  
								group: aGroup;
								course: self course;
								parent: self)