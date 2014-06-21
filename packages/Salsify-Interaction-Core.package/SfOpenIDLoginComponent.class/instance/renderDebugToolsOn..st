debug-only
renderDebugToolsOn: html
	SfLibrary debug 
		ifTrue: [html div
					class: 'debug loginBox';
					with: [
						self renderPresentationHeadingOn: html.
						self renderDebugLoginFormOn: html.
					"	self renderDebugLoginShortcutsOn: html."
						self renderDatabaseResetButtonsOn: html]]