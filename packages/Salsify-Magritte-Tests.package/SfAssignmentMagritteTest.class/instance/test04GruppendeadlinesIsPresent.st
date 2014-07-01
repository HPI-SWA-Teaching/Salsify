as yet unclassified
test04GruppendeadlinesIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Gruppendeadlines:' ])