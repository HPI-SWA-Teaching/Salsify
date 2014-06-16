tests
test04userDisenrollsinCourse
	| user |
	user := SfUser new.
	user enrollIn: self course.
	self assert: user studentIn notEmpty.
	user disEnrollIn: self course.
	self assert: user studentIn isEmpty
	