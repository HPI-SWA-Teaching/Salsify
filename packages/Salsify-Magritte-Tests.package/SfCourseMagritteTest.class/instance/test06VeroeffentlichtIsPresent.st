as yet unclassified
test06VeroeffentlichtIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Veröffentlicht?:' ])