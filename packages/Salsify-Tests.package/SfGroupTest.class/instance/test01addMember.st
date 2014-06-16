tests
test01addMember
	| group user |
	group := SfGroup new.
	user := SfUser new.
	self assert: (group members isEmpty).
	group addMember: user.
	self assert: (group members = {user} asOrderedCollection).
	group addMember: user.
	self assert: (group members size = 1)