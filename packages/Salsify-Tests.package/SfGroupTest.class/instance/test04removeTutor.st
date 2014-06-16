tests
test04removeTutor
	| group tutor |
	group := SfGroup new.
	tutor := SfUser new.
	group addMember: tutor.
	group removeMember: tutor.
	self assert: (group members isEmpty)