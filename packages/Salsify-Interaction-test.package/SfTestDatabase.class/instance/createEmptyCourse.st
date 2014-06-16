as yet unclassified
createEmptyCourse
	| course |
	course := SfCourse new.
	^self addCourse: course.