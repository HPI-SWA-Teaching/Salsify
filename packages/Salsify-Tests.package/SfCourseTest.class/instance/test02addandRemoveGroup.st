tests
test02addandRemoveGroup
	| course group |
	course := SfCourse new.
	group := SfGroup new.
	course addGroup: group.
	self assert: (course groups includes: group).
	course removeGroup: group.
	self assert: (course groups isEmpty)