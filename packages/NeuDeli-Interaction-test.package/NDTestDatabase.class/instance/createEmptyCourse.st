as yet unclassified
createEmptyCourse
	| course |
	course := NDCourse new.
	^self addCourse: course.