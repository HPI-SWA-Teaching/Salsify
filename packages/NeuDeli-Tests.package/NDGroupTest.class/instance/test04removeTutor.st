tests
test04removeTutor
	| group tutor |
	group := NDGroup new.
	tutor := NDUser new.
	group addMember: tutor.
	group removeMember: tutor.
	self assert: (group members isEmpty)