as yet unclassified
openIDLogin: html
	|openIDprovider callback url|
	
	openIDprovider := ZnOpenIDProvider newHPIProvider.
	
	callback := WAActionCallback on: [ self handleCallback ].
	url := html actionUrl copy addField: (html callbacks store: callback).
	
	self requestContext 
		redirectTo: ((openIDprovider createSession) 
						getAuthenticationRequestUrl: url asString 
								do: [:request|
										 request ns: request class nsOpenId2;
										 claimedId: request class selectId;
										 identity: request class selectId.
										 request realm: SfLibrary domainString.
										 request axRequestNamesAndEmail.
										 request returnTo: SfLibrary pathString]);
		respond
		"(the response from openID goes to our RootComponent)"