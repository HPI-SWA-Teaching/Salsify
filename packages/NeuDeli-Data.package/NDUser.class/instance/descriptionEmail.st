magritte
descriptionEmail

	^MAStringDescription new 
		selectorAccessor: #email;
		label: 'E-Mail';
		priority: 20;
		beRequired;
		addCondition: [ :value |  value includes: '@']
		labelled: 'Die e-Mail ist ungültig.';
		yourself