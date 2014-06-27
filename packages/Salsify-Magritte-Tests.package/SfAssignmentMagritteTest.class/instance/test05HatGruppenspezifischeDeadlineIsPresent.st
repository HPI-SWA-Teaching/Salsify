as yet unclassified
test05HatGruppenspezifischeDeadlineIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'hat gruppenspezifische Deadlines?:' ])