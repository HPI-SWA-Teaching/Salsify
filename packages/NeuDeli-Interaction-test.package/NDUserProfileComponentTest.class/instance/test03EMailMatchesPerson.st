testing
test03EMailMatchesPerson
	self assert: ((self userEmailTextField getAttribute: 'value') asLowercase
				= 'robert.hirschfeld').