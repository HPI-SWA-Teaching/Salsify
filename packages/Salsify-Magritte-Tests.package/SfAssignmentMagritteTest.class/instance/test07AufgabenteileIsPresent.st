as yet unclassified
test07AufgabenteileIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Aufgabenteile:' ])