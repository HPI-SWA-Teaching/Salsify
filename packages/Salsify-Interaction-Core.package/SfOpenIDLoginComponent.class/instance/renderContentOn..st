rendering
renderContentOn: html
	html div
		class: 'loginBox';
		with: [self renderOpenIDLoginLinkOn: html].
	self class isDebug ifTrue: [self renderDebugToolsOn: html]