as yet unclassified
addGroupEditorForGroup: aGroup
	self groupEditors add: (SfGroupEditComponent new  
								group: aGroup;
								course: self course;
								parent: self;
								yourself)