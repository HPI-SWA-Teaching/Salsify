as yet unclassified
test09TutorenIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Tutoren:' ])