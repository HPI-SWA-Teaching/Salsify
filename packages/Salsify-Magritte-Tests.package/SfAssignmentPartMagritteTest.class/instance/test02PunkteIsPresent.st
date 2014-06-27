as yet unclassified
test02PunkteIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Punkte:' ])