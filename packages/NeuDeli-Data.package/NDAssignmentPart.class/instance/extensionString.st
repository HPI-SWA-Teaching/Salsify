as yet unclassified
extensionString
	| nonEmptyExtensions extensionString |
	
	nonEmptyExtensions := (self extensions select: [:each | each ~= '']).
	(nonEmptyExtensions isEmpty | nonEmptyExtensions includes: '*')
		ifTrue: [^''].

	extensionString := ''.
	nonEmptyExtensions
		do: [:each | extensionString := extensionString, each]
		separatedBy: [extensionString := extensionString, ', '].
	
	^' (nur ', extensionString, ')'