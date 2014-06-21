initialization
getFreeCourseTutors
	^self course tutors 
		select: [:each | (each isTutorForGroup: self group) not]