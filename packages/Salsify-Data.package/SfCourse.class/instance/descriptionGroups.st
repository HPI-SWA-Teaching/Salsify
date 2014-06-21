magritte
descriptionGroups
	<magritteDescription>
	^MAMultipleOptionDescription new
		selectorAccessor: #groups;
		label: 'Gruppen';
		priority: 42;
		default: OrderedCollection new;
		beOrdered;
		beDistinct;
		yourself