as yet unclassified
test04EndungenIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Endungen:' ])