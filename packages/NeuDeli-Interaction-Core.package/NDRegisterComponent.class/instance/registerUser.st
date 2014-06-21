as yet unclassified
registerUser
	self user email: (self email).
	self user username: (self username).
	self session database addUser: user.
	self session login: user.
	self session rootComponent showCourseOverviewComponent