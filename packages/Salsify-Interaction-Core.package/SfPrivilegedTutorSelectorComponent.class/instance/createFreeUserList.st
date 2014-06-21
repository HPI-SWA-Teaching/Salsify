as yet unclassified
createFreeUserList
	| freeUsers |
	freeUsers := self session database allStudents
	select: [:each | (each isPrivilegedTutorIn: self course) not & (each isEnrolledIn: self course) not ].
	freeUsers sort: [:a :b | a username < b username].
	self freeUserList addAll: freeUsers