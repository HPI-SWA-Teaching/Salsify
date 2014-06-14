tests
test02addandRemoveGroup
	| course group |
	course := NDCourse new.
	group := NDGroup new.
	course addGroup: group.
	self assert: (course groups includes: group).
	course removeGroup: group.
	self assert: (course groups isEmpty)