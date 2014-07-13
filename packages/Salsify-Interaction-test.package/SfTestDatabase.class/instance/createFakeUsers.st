as yet unclassified
createFakeUsers
	| tempUser tutors |
	tutors := OrderedCollection new.
	self class clearUsers.
	tempUser := SfUser new email: 'jaspar.mang'; identity: 'https://openid.hpi.uni-potsdam.de/user/jaspar.mang'; username: 'Jaspar Mang'.
	self addUser: tempUser.
	tempUser := SfUser new email: 'stephan.haarmann'; identity: 'https://openid.hpi.uni-potsdam.de/user/stephan.haarmann'; username: 'Stephan Haarmann'.
	self addUser: tempUser.
	tempUser := SfUser new email: 'florian.meinel'; identity: 'https://openid.hpi.uni-potsdam.de/user/florian.meinel'; username: 'Florian Meinel'.
	self addUser: tempUser.
	tutors add: tempUser.
	tempUser := SfUser new email: 'kathrin.mao'; identity: 'https://openid.hpi.uni-potsdam.de/user/kathrin.mao'; username: 'Kathrin Mao'.
	self addUser: tempUser.
	tutors add: tempUser.
	tempUser := SfUser new email: 'julia.wachtel'; identity: 'https://openid.hpi.uni-potsdam.de/user/julia.wachtel'; username: 'Julia Wachtel'.
	self addUser: tempUser.
	tempUser := SfUser new email: 'malte.mues'; identity: 'https://openid.hpi.uni-potsdam.de/user/malte.mues'; username: 'Malte Mues'.
	self addUser: tempUser.
	tempUser := SfUser new email: 'robin.schreiber'; identity: 'https://openid.hpi.uni-potsdam.de/user/robin.schreiber'; username: 'Robin Schreiber'.
	self addUser: tempUser.
	tempUser := SfUser new email: 'robert.hirschfeld'; identity: 'https://openid.hpi.uni-potsdam.de/user/robert.hirschfeld'; username: 'Robert Hirschfeld'.
	self addUser: tempUser.
	tempUser := SfUser new email: 'tobias.pape@hpi.uni-potsdam.de'; identity: 'https://openid.hpi.uni-potsdam.de/user/tobias.pape'; username: 'Tobias Pape'.
	self addUser: tempUser.
	^tutors
	 