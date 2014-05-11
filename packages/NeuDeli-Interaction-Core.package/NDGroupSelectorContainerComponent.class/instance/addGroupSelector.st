as yet unclassified
addGroupSelector
	^self groupSelectors add: (NDGroupSelectorComponent new
									parent: self;
									course: self course)
