as yet unclassified
removeStudent: aStudent
	| group| 
	group := self findGroupByUser: aStudent.
	group removeMember: aStudent.
	group isEmpty ifTrue: [self removeGroup: group]