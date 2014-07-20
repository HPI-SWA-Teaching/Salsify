as yet unclassified
createFakeAssignment: aCourse
	aCourse addAssignment: (SfAssignment new 
								title: 'Uebung1';
								generalDeadline: Date yesterday).
	(aCourse assignments detect: [ :each | each title = 'Uebung1' ]) addAssignmentPart: (SfAssignmentPart new title: 'Aufgabe1').