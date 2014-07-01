as yet unclassified
test06AbgabeEinerGruppeIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Abgaben einer Gruppe:' ])