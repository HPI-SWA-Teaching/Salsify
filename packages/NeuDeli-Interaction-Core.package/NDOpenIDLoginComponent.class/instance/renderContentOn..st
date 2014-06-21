rendering
renderContentOn: html
	html div
		class: 'loginBox';
		with: [self renderOpenIDLoginLinkOn: html].
				
	self renderDebugToolsOn: html