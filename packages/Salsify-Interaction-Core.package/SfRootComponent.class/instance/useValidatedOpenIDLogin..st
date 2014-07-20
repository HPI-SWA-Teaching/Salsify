openID
useValidatedOpenIDLogin: aRequest
	| user queryFields authenticationResponse |
	queryFields := aRequest url queryFields.
	
	authenticationResponse := ZnOpenIDAuthResponse newFromDictionary: queryFields.
	
	user := self session database findUserByIdentity: (authenticationResponse identity). 
	
	user ifNotNil: [self loginUser: user]
		ifNil: [self createNewUserFromOpenIDFields: queryFields]