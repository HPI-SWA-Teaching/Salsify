as yet unclassified
validateDeadline: value forGroup: aGroup
	value = ''
		ifFalse: [[self assignment deadlinesByGroup at: aGroup put: (Date fromString: value)] on: Error do: []]