description
descriptionDeadlinesByGroup
	<magritteDescription>
	^MADateAndTimeDescription new
		selectorAccessor: #deadlinesByGroup;
		label: 'Gruppendeadlines';
		priority: 10;
		default: GROrderedMultiMap;
		yourself