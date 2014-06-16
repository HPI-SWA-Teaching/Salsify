as yet unclassified
resetGroupEditors
	self groupEditors: OrderedCollection new.
	self course groups 
		do: [:each | self addGroupEditorForGroup: each]