openID
isValidatedOpenIDResponse: aRequest
"to be continued..."
	| fields |
	fields := aRequest url queryFields.
	(fields at: 'openid.mode'
		ifAbsent: [^false]) = 'check_authentication'
			ifFalse: [^false].
	(fields at:'is_valid'
		ifAbsent: [^false]) = 'true'
			ifFalse: [self session showNotification: 'Login Error'.
					^false].
	^true