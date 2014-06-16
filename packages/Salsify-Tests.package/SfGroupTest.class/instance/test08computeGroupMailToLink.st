tests
test08computeGroupMailToLink
	| group user1 user2 |
	group := SfGroup new.
	user1 := SfUser new email: 'Alice@Muster'.
	user2 := SfUser new email: 'Bob'.
	group
		addMember: user1;
		addMember: user2.
	self assert: (group mailToLink = 'mailto:Alice@Muster Bob ')