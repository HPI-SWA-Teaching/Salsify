as yet unclassified
testAddGroup
	self course addGroup: self aGroup.
	self assert: (self course groups includes: self aGroup)