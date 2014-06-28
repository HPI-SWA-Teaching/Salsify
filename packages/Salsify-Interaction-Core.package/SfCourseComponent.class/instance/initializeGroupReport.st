accessing
initializeGroupReport
	self groupReport: ((MAReport 
		rows: course groups
		description: SfGroup new descriptionReport)
			rowPeriod: 1;
			yourself).
	