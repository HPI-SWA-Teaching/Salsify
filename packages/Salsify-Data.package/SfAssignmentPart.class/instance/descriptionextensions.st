magritte
descriptionextensions
	<magritteDescription>
	| extension |
	extension := OrderedCollection new.
	extension add: '*'.
	^MAMultipleOptionDescription new
		selectorAccessor: #extensions;
		label: 'Endungen';
		priority: 30;
		default: extension;
		yourself