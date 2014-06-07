testing
test03removeEmptyAssignmentParts
	
	self assignment assignmentParts:  
		{ NDAssignmentPart new. NDAssignmentPart new. (NDAssignmentPart new title: 'Mandelbrot Menge') }
			asOrderedCollection.
	self assignment removeEmptyAssignmentParts.
	self assert: (self assignment assignmentParts size = 1).
	self assert: (self assignment assignmentParts first title = 'Mandelbrot Menge')