initialization
resetStudentList
	| freeStudents |
	freeStudents := (self session database allStudents
						select: [:each | (each isEnrolledIn: self course)])
							reject: [:eachEnrolled | eachEnrolled isInGroupOf: self session user inCourse: self course].
	self userList addAll: freeStudents.
	
	(self userList select: [:each | each = self selectedUser])
		ifEmpty: [self userList add: self selectedUser]