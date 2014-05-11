as yet unclassified
mailToLink
	| linkUrl |
	linkUrl := 'mailto:'.
	self members do: [:each | linkUrl := linkUrl, each email] separatedBy: [linkUrl := linkUrl, ','].
	^linkUrl