magritte
descriptionTopicPool
	<magritteDescription>
	^MAMultipleOptionDescription new
		selectorAccessor: #topicPool;
		label: 'Themenpool';
		priority: 42;
		default: OrderedCollection new;
		beOrdered;
		beDistinct;
		yourself