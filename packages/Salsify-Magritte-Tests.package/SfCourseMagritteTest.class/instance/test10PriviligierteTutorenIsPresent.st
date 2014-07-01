as yet unclassified
test10PriviligierteTutorenIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'priviligierte Tutoren:' ])