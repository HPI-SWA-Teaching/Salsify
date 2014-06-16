as yet unclassified
getDeadlineForGroup: aGroup
	| deadline |
	deadline := (self assignment deadlinesByGroup at: aGroup ifAbsent: [^'']).
	deadline
		ifNotNil: [^deadline yyyymmdd].
	^''