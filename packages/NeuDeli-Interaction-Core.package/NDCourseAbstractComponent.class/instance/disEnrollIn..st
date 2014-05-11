as yet unclassified
disEnrollIn: aCourse
	self session user disEnrollIn: course.
	self session rootComponent showNotification: 'Sie haben ', self course asString , ' verlassen.'