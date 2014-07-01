as yet unclassified
test08ThemenpoolIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Themenpool:' ])