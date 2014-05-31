as yet unclassified
createFakeUsers
	| tempUser |
	self class clearUsers.
	tempUser := NDUser new email: 'florian.meinel'; identity: 'https://openid.hpi.uni-potsdam.de/user/florian.meinel'; username: 'Florian Meinel'.
	self addUser: tempUser.
	tempUser := NDUser new email: 'kathrin.mao'; identity: 'https://openid.hpi.uni-potsdam.de/user/kathrin.mao'; username: 'Kathrin Mao'.
	self addUser: tempUser.
	tempUser := NDUser new email: 'julia.wachtel'; identity: 'https://openid.hpi.uni-potsdam.de/user/julia.wachtel'; username: 'Julia Wachtel'.
	self addUser: tempUser.
	tempUser := NDUser new email: 'malte.mues'; identity: 'https://openid.hpi.uni-potsdam.de/user/malte.mues'; username: 'Malte Mues'.
	self addUser: tempUser.
	tempUser := NDUser new email: 'robin.schreiber'; identity: 'https://openid.hpi.uni-potsdam.de/user/robin.schreiber'; username: 'Robin Schreiber'.
	self addUser: tempUser.
	tempUser := NDUser new email: 'robert.hirschfeld'; identity: 'https://openid.hpi.uni-potsdam.de/user/robert.hirschfeld'; username: 'Robert Hirschfeld'.
	self addUser: tempUser