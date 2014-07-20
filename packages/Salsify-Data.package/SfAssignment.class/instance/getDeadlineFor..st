submissionManaging
getDeadlineFor: aGroup
	^self hasGroupSpecificDeadlines 
		ifTrue: [self deadlinesByGroup at: aGroup ifAbsent: [nil]]
		ifFalse: [self generalDeadline]
	