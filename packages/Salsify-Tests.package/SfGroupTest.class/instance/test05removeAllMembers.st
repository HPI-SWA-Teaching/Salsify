tests
test05removeAllMembers
	| group |
	group := SfGroup new.
	group addMember: SfUser new.
	group addMember: SfUser new.
	group addMember: SfUser new.
	self assert: (group members size = 3).
	group removeAllMembers.
	self assert: (group members isEmpty)