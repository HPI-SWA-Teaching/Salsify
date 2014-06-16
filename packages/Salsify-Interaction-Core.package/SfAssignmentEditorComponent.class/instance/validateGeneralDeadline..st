as yet unclassified
validateGeneralDeadline: aValue
	[self assignment generalDeadline: (Date fromString: aValue)] on: Error do: []