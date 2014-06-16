debug-only
renderDebugToolsOn: html
	SfLibrary debug 
		ifTrue: [html div
					class: 'debug loginBox';
					with: ["self renderDebugLoginFormOn: html."
						self renderPresentationHeadingOn: html.
						self renderDebugLoginShortcutsOn: html.
					"	self renderDatabaseResetButtonsOn: html"]]