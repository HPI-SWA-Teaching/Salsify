initialization
initialize
	super initialize.
	 self 
		title: 'Neue Lehrveranstaltung';
		year: Year current year;
		isInSummer: false;
		published: false;
		website: '';
		mailinglist: '';
		tutors: OrderedCollection new;
		privilegedTutors: OrderedCollection new;
		material: Dictionary new; 
		groups: OrderedCollection new;
		maximumGroupSize: 5;
		groupDeadline: Date tomorrow;
		hasTopicpool: false;
		hasTopics: false;
		topicPool: OrderedCollection new;
		assignments: OrderedCollection new