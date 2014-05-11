openID
initialRequest: aRequest
	(self isOpenIDResponse: aRequest)
		ifTrue:[self useValidatedOpenIDLogin: aRequest]
	
	"
	Work in Progress, just needed to commoit for Working on Gemstone.
	(self isOpenIDResponse: aRequest) 
		ifTrue: [self validateOpenIDLogin: aRequest].
	(self isValidatedOpenIDResponse: aRequest)
		ifTrue:[self useValidatedOpenIDLogin: aRequest].
		
	Transcript show: aRequest; cr"