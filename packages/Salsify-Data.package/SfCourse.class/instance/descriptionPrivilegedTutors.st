magritte
descriptionPrivilegedTutors
	<magritteDescription>
	^MAMultipleOptionDescription new
		selectorAccessor: #privilegedTutors;
		label: 'privligierte Tutoren';
		priority: 42;
		default: OrderedCollection new;
		beOrdered;
		beDistinct;
		yourself