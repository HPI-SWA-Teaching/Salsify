initialization
initialize
	self
		title: '';
		submissionsByGroup: GROrderedMultiMap new;
		assignmentParts: OrderedCollection new;
		deadlinesByGroup: GROrderedMultiMap new;
		generalDeadline: Date current;
		hasGroupSpecificDeadlines: false