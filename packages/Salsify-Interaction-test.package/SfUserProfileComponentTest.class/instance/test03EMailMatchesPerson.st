testing
test03EMailMatchesPerson
	self assert: ((self userEmailTextField getAttribute: 'value') asLowercase
				= 'tobias.pape@hpi.uni-potsdam.de').