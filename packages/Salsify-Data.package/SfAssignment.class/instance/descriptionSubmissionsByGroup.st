magritte
descriptionSubmissionsByGroup

	^MAMultipleOptionDescription new
		selectorAccessor: #submissionsByGroup;
		label: 'Abagben einer Gruppe';
		priority: 50;
		default: GROrderedMultiMap new;
		beOrdered;
		yourself