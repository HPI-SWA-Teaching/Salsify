fileHandling
file: aFile hasAllowedExtensionFor: anAssignmentPart
	| allowedExtensions|
	allowedExtensions := anAssignmentPart extensions select: [:each | each ~= ''].
	allowedExtensions
		do: [:each | ((aFile fileName endsWith: each) or: (each = '*')) ifTrue: [^true]].
	^false