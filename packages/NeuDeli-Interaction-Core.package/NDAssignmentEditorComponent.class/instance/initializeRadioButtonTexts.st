initialization
initializeRadioButtonTexts
	self assignment hasGroupSpecificDeadlines
		ifTrue: [self specificDeadlineText: 'DeadlineGruppenspezifisch']
		ifFalse: [self specificDeadlineText: 'DeadlineFuerAlle']