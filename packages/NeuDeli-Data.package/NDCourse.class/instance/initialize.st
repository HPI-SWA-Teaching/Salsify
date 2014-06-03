initialization
initialize
	 self 
		title: 'Neue Lehrveranstaltung';
		year: Year current year;
		isInSummer: false;
		published: false;
		website: '';
		mailinglist: '';
		tutors: OrderedCollection new;
		privilegedTutors: OrderedCollection new;
		groups: OrderedCollection new;
		maximumGroupSize: 4;
		groupDeadline: Date tomorrow;
		hasTopicpool: false;
		hasTopics: false;
		topicPool: OrderedCollection new;
		assignments: OrderedCollection new