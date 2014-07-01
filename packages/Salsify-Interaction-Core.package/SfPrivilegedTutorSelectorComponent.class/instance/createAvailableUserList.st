as yet unclassified
createAvailableUserList
	| availableUsers |
	availableUsers := self session database allStudents
	select: [:each | (each isPrivilegedTutorIn: self course) not & (each isEnrolledIn: self course) not ].
	availableUsers add: self nullUser.  
	availableUsers sort: [:a :b | a username < b username].
	self availableUserList: availableUsers 