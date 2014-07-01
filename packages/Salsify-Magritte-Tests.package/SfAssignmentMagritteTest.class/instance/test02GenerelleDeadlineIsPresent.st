as yet unclassified
test02GenerelleDeadlineIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Generelle Deadline:' ])