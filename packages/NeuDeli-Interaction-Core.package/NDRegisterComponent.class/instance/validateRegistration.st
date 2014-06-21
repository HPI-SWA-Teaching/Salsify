as yet unclassified
validateRegistration
	((self username isEmpty) | (self email isEmpty))
		ifTrue: [self session rootComponent showNotification: 'Bitte geben Sie Namen und E-Mail-Adresse an']
		ifFalse: [self registerUser]