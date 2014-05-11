as yet unclassified
initialize
	super initialize.
	self database: NDTestDatabase new.
	self database resetDatabase.