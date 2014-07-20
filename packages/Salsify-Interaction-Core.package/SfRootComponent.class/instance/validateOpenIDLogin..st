openID
validateOpenIDLogin: aRequest
	|openIDprovider queryFields| 
	
	queryFields := aRequest url queryFields.
	openIDprovider := ZnOpenIDProvider newHPIProvider.
		
	self requestContext 
		redirectTo: ((openIDprovider createSession) 
						getAuthenticationRequestforValidationFrom: queryFields);
		respond
		