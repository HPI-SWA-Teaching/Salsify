as yet unclassified
addGroupSelector
	^self groupSelectors add: (SfGroupSelectorComponent new
									parent: self;
									course: self course)
