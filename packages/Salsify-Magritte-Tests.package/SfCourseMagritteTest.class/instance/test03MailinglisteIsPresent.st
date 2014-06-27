as yet unclassified
test03MailinglisteIsPresent
	self assert: ((driver findElementsByXPath: '//label') anySatisfy: [ :each | each getText = 'Mailingliste:' ])