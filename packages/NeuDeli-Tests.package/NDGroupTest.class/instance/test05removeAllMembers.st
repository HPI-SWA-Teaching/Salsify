tests
test05removeAllMembers
	| group |
	group := NDGroup new.
	group addMember: NDUser new.
	group addMember: NDUser new.
	group addMember: NDUser new.
	self assert: (group members size = 3).
	group removeAllMembers.
	self assert: (group members isEmpty)