as yet unclassified
removeEmptyExtensions
	| toDelete |
	toDelete := OrderedCollection new.	
	self extensions do: [:each | each = '' ifTrue: [toDelete add: each]].
	toDelete do: [:each | self extensions remove: each]