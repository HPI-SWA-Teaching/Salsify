as yet unclassified
test04IstImSommerIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Ist im Sommer?:' ])