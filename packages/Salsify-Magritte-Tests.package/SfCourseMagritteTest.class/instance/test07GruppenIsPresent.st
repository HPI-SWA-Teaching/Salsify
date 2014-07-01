as yet unclassified
test07GruppenIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Gruppen:' ])