testing
test04userDisenrollsinCourse
	| user |
	user := NDUser new.
	user enrollIn: self course.
	self assert: user studentIn notEmpty.
	user disEnrollIn: self course.
	self assert: user studentIn isEmpty
	