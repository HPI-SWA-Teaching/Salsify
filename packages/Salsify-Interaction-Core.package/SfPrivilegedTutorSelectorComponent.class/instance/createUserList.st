as yet unclassified
createUserList
	| freeUsers |
	self addUserToList: self selectedUser.
	freeUsers := self session database allStudents
	select: [:each | (each isPrivilegedTutorIn: self course) not & (each isEnrolledIn: self course) not ].
	freeUsers sort: [:a :b | a username < b username].
	self userList addAll: freeUsers