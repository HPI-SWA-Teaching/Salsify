as yet unclassified
createFakeTopics
	| course users |
	course := self class courses detect: [:each | each title = 'Softwarearchitektur'].
	users := self class users select: [:each | each username = 'Jaspar Mang' or: [each username = 'Stephan Haarmann' ]].
	(users first findGroupByCourse: course) topic: 'Magritte'.
	(users last findGroupByCourse: course) topic: 'Parasol'