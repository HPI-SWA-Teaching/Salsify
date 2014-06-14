tests
test03removeMember
	| group user |
	group := NDGroup new.
	user := NDUser new.
	group addMember: user.
	group removeMember: user.
	self assert: (group members isEmpty)