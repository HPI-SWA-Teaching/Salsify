initialization
initialize
	super initialize.
	self members: OrderedCollection new;
		tutors: OrderedCollection new;
		topicWishes: Dictionary new;
		topic: '';
		topicdescription: ''