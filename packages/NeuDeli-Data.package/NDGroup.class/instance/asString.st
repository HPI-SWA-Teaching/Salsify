converting
asString 
	^ self members inject: '' into: [:groupname :member | groupname , member username , ' ']