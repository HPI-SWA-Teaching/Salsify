tests
test03removeEmptyAssignmentParts
	
	self assignment assignmentParts:  
		{ SfAssignmentPart new. SfAssignmentPart new. (SfAssignmentPart new title: 'Mandelbrot Menge') }
			asOrderedCollection.
	self assignment removeEmptyAssignmentParts.
	self assert: (self assignment assignmentParts size = 1).
	self assert: (self assignment assignmentParts first title = 'Mandelbrot Menge')