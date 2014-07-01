initialization
getFreeCourseTutors
	^((self course tutors, self course privilegedTutors) asSet) asOrderedCollection
		select: [:each | (each isTutorForGroup: self group) not]