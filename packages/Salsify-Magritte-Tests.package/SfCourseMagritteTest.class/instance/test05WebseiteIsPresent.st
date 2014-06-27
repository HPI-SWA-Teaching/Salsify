as yet unclassified
test05WebseiteIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Webseite:' ])