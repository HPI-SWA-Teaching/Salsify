converting
mailToLink
	^ self members inject: 'mailto:' into: [:maillink :member | maillink , member email , ' ']