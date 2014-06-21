as yet unclassified
createCourseAndShowEditor
	| aCourse |
	aCourse := self session database createEmptyCourse.
	self session rootComponent showEditCourseComponentWith: aCourse