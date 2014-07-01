magritte
descriptionMailinglist
	<magritteDescription>
	^MAStringDescription new
		selectorAccessor: #mailinglist;
		label: 'Mailingliste';
		priority: 23;
		default: '';
		addCondition: [ :value |  value includes: '@']
		labelled: 'Die e-Mail für die Maillingliste ist ungültig.';
		yourself