magritte
descriptionDeadlinesByGroup

	^MADateDescription new
		selectorAccessor: #deadlinesByGroup;
		label: 'Gruppendeadline';
		priority: 10;
		default: GROrderedMultiMap new;
		beOrdered;
		yourself