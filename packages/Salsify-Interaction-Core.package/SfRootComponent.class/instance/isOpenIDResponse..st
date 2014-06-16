openID
isOpenIDResponse: aRequest
	| fields |
	fields := aRequest url queryFields.
	fields at: 'openid.ns'
			ifAbsent: [^false].
	(fields at: 'openid.mode'
			ifAbsent: [^false]) = 'check_authentication'
				ifTrue: [^false].
	^true