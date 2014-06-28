as yet unclassified
createFakeOccupancy
	| course |
	course := self class courses detect: [:each | each title = 'Softwarearchitektur'].
	(self class ndUsers select: [:each | (each username = 'Jaspar Mang')
		or: [each username = 'Stephan Haarmann']]) do: [:each | course addStudent: each]