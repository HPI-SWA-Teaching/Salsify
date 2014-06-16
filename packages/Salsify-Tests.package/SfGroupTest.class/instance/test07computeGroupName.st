tests
test07computeGroupName
	| group user1 user2 |
	group := SfGroup new.
	user1 := SfUser new username: 'Alice'.
	user2 := SfUser new username: 'Bob'.
	group
		addMember: user1;
		addMember: user2.
	self assert: (group asString = 'Alice Bob ')