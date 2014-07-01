as yet unclassified
test13MaximaleGruppengroessenIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Maximale Gruppengrößen:' ])