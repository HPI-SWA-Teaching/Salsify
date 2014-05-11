as yet unclassified
enrollIn: aCourse
	self session user enrollIn: aCourse.
	self session rootComponent showNotification: 'Sie haben ', self course asString , ' belegt.'