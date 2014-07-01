as yet unclassified
test03EmailIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'E-Mail:' ])