magritte
descriptionPrivilegedTutors
	<magritteDescription>
	^MAMultipleOptionDescription new
		selectorAccessor: #privilegedTutors;
		label: 'priviligierte Tutoren';
		priority: 42;
		default: OrderedCollection new;
		beOrdered;
		beDistinct;
		yourself