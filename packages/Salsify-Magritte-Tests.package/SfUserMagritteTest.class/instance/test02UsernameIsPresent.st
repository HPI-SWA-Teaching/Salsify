as yet unclassified
test02UsernameIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Benutzername:' ])