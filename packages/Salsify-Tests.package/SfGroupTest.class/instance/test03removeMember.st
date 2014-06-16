tests
test03removeMember
	| group user |
	group := SfGroup new.
	user := SfUser new.
	group addMember: user.
	group removeMember: user.
	self assert: (group members isEmpty)