as yet unclassified
test14MaximaleGruppendeadlinePresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Gruppendeadline:' ])