tests
test08computeGroupMailToLink
	| group user1 user2 |
	group := NDGroup new.
	user1 := NDUser new email: 'Alice@Muster'.
	user2 := NDUser new email: 'Bob'.
	group
		addMember: user1;
		addMember: user2.
	self assert: (group mailToLink = 'mailto:Alice@Muster Bob ')