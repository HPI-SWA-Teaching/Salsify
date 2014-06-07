as yet unclassified
test06RemoveGroup
	self course groups add: self aGroup.
	self course removeGroup: self aGroup.
	self assert: (self course groups includes: self aGroup) not