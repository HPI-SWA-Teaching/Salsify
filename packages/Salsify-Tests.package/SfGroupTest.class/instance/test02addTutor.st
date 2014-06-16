tests
test02addTutor
	| group tutor |
	group := SfGroup new.
	tutor := SfUser new.
	self assert: (group members isEmpty).
	group addMember: tutor.
	self assert: (group members = {tutor} asOrderedCollection).
	group addMember: tutor.
	self assert: (group members size = 1)