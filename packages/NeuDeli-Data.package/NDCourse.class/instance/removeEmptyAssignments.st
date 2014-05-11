as yet unclassified
removeEmptyAssignments 
	| toDelete |
	toDelete := OrderedCollection new.	
	self assignments do: [:each | each title = '' ifTrue: [toDelete add: each]].
	toDelete do: [:each | self removeAssignment: each]