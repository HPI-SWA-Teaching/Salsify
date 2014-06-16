as yet unclassified
initialize
	super initialize.
	self database: SfTestDatabase new.
	self database resetDatabase.