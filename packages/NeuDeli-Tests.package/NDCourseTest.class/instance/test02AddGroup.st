as yet unclassified
test02AddGroup
	self course addGroup: self aGroup.
	self assert: (self course groups includes: self aGroup)