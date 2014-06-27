magritte
descriptionGroups
	<magritteDescription>
	^MAMultipleOptionDescription new
		selectorAccessor: #groups;
		label: 'Gruppen';
		priority: 42;
		options: { 'TestString'. 'TestString2' } asOrderedCollection;
		default:{ 'TestString'. 'TestString2' } asOrderedCollection;
		componentClass: MAListCompositonComponent;
		beOrdered;
		beDistinct;
		yourself