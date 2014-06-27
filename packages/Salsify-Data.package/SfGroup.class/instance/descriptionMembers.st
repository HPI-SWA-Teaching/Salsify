magritte
descriptionMembers
	<magritteDescription>
	^MAMultipleOptionDescription  new 
		selectorAccessor: #members;
		label: 'Gruppenmitglieder';
		priority: 70;
		default: OrderedCollection new;
		beOrdered;
		beDistinct;
		yourself
		