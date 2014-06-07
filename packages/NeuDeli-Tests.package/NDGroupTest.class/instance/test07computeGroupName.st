as yet unclassified
test07computeGroupName
	| group user1 user2 |
	group := NDGroup new.
	user1 := NDUser new username: 'Alice'.
	user2 := NDUser new username: 'Bob'.
	group
		addMember: user1;
		addMember: user2.
	self assert: (group asString = 'Alice Bob ')