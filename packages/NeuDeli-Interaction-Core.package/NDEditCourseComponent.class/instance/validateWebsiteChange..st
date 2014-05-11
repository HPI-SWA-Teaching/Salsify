as yet unclassified
validateWebsiteChange: value
	| websiteString |
	websiteString := value.
	(websiteString  beginsWith: 'http://')
		ifFalse: [self course website: 'http://',websiteString];
		ifTrue: [self course website: websiteString]
	