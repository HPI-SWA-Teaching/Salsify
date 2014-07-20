description
descriptionSubmissionsByGroup
	<magritteDescription>
	^MAMultipleOptionDescription new
		selectorAccessor: #submissionsByGroup;
		label: 'Abgaben einer Gruppe';
		priority: 50;
		default: GROrderedMultiMap new;
		beOrdered;
		yourself