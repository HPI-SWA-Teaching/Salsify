as yet unclassified
test12JahrIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Jahr:' ])