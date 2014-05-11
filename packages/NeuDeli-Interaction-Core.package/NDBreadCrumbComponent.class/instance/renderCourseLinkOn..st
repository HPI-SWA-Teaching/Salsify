as yet unclassified
renderCourseLinkOn: html
	self course ifNotNil: [html text: ' » '.
						html anchor
						callback: [self session rootComponent showCourseComponentwith: self course];
						with: (self course asString)]