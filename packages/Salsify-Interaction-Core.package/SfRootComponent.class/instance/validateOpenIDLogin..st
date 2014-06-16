openID
validateOpenIDLogin: aRequest
	|openIDprovider queryFields| 
	
	Transcript show: 'called'; cr.
	queryFields := aRequest url queryFields.
	openIDprovider := ZnOpenIDProvider newHPIProvider.
		
	self requestContext 
		redirectTo: ((openIDprovider createSession) 
						getAuthenticationRequestforValidationFrom: queryFields);
		respond
		