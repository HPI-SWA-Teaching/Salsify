extensionManaging
extensionString
	(self extensions reject: [ :each | each = '']) isEmpty
		ifTrue: [ ^'' ]
		ifFalse: [ ^ self extensions inject: 'nur: ' into: [:string :each | string , ' ' , each ] ].