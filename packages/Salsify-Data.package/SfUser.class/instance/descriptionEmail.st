magritte
descriptionEmail
	<magritteDescription>
	^MAStringDescription new 
		selectorAccessor: #email;
		label: 'E-Mail';
		priority: 20;
		beRequired;
		addCondition: [ :value |  value includesSubstring: '@']
		labelled: 'Die e-Mail ist ungültig.';
		yourself