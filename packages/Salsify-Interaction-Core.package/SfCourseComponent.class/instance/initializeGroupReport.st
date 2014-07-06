initialization
initializeGroupReport
	self groupReport: ((MAReport 
		rows: course groups
		description: SfGroup new descriptionReport)
			rowPeriod: 1;
			yourself).
	(self groupReport columns detect:  [:each | each label = 'Gruppennummer' ])
		renderer: [:each :html | html anchor
			url: (each mailToLink);
			with: ('Gruppe ', each number asString)]
	