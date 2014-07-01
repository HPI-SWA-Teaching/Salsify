magritte
descriptionAssignements
	<magritteDescription>	
	^MAMultipleOptionDescription new
		selectorAccessor: #assignments;
		label: 'Aufgabe';
		priority: 42;
		default: OrderedCollection new;
		beOrdered;
		beDistinct;
		yourself