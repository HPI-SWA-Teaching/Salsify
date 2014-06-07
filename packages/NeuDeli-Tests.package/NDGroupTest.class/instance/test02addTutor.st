as yet unclassified
test02addTutor
	| group tutor |
	group := NDGroup new.
	tutor := NDUser new.
	self assert: (group members isEmpty).
	group addMember: tutor.
	self assert: (group members = {tutor} asOrderedCollection).
	group addMember: tutor.
	self assert: (group members size = 1)