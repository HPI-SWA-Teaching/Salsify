description
descriptionTutors
	<magritteDescription>
	^MAMultipleOptionDescription  new 
		selectorAccessor: #tutors;
		label: 'Tutoren';
		priority: 70;
		default: OrderedCollection new;
		beOrdered;
		beDistinct;
		yourself
		