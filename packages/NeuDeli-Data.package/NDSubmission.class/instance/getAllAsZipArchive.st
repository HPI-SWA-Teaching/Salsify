as yet unclassified
getAllAsZipArchive
	| zip |
	zip := ZipArchive new.
	
	self filesByAssignmentPart keys asSet
			do: [:each | | aFile |
						aFile := (self getFilesByAssignmentPart: each) last.
						aFile ifNotNil: [zip addString: (aFile contents ) as: aFile fileName]].
	^zip