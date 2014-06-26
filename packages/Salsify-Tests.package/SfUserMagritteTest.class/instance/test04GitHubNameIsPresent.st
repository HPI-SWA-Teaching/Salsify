as yet unclassified
test04GitHubNameIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'GitHubName:' ])