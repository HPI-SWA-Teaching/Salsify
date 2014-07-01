magritte
descriptionTutors
	<magritteDescription>
	^MAMultipleOptionDescription new
		selectorAccessor: #tutors;
		label: 'Tutoren';
		priority: 42;
		default: OrderedCollection new;
		beOrdered;
		beDistinct;
		yourself