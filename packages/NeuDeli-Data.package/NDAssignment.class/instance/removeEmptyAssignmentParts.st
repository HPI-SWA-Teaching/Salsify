as yet unclassified
removeEmptyAssignmentParts 
	| toDelete |
	toDelete := OrderedCollection new.	
	self assignmentParts do: [:each | each title = '' ifTrue: [toDelete add: each]].
	toDelete do: [:each | self assignmentParts remove: each]