as yet unclassified
haveSameMembers: firstGroup and: secondGroup
	| firstAreInSecond secondAreInFirst |
	firstAreInSecond := true.
	secondAreInFirst := true.
	
	firstGroup members do: [:eachFirst | (secondGroup members includes: eachFirst) ifFalse: [firstAreInSecond := false]].
	secondGroup members do: [:each | (firstGroup members includes: each) ifFalse: [secondAreInFirst := false]].
	
	^ (firstAreInSecond & secondAreInFirst)