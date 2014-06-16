as yet unclassified
writeMutex
	^ WriteMutex ifNil: [WriteMutex := Monitor new]