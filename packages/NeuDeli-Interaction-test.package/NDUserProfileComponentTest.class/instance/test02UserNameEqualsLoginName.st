testing
test02UserNameEqualsLoginName
	self assert: ((self userNameTextField getAttribute: 'value') = 'Robert Hirschfeld').