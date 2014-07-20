description
descriptionAssignmentParts
	<magritteDescription>
	^MAMultipleOptionDescription new
		selectorAccessor: #assignmentParts;
		label: 'Aufgabenteile';
		priority: 50;
		default: OrderedCollection new;
		beOrdered;
		yourself