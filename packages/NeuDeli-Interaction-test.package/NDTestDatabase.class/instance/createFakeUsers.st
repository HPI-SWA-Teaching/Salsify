as yet unclassified
createFakeUsers
	| robert a b c d e|
	self class clearUsers.
	a := NDUser new email: 'florian.meinel'; identity: 'https://openid.hpi.uni-potsdam.de/user/florian.meinel'; username: 'Florian Meinel'.
	self addUser: a.
	b := NDUser new email: 'kathrin.mao'; identity: 'https://openid.hpi.uni-potsdam.de/user/kathrin.mao'; username: 'Kathrin Mao'.
	self addUser: b.
	c := NDUser new email: 'julia.wachtel'; identity: 'https://openid.hpi.uni-potsdam.de/user/julia.wachtel'; username: 'Julia Wachtel'.
	self addUser: c.
	d := NDUser new email: 'malte.mues'; identity: 'https://openid.hpi.uni-potsdam.de/user/malte.mues'; username: 'Malte Mues'.
	self addUser: d.
	e := NDUser new email: 'robin.schreiber'; identity: 'https://openid.hpi.uni-potsdam.de/user/robin.schreiber'; username: 'Robin Schreiber'.
	self addUser: e.
	robert := NDUser new email: 'robert.hirschfeld'; identity: 'https://openid.hpi.uni-potsdam.de/user/robert.hirschfeld'; username: 'Robert Hirschfeld'.
	self addUser: robert