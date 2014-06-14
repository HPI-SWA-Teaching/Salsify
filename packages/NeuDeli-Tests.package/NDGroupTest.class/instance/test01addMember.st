tests
test01addMember
	| group user |
	group := NDGroup new.
	user := NDUser new.
	self assert: (group members isEmpty).
	group addMember: user.
	self assert: (group members = {user} asOrderedCollection).
	group addMember: user.
	self assert: (group members size = 1)