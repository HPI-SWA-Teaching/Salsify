debug-only
renderDebugLoginShortcutsOn: html
	html anchor 
		class: 'button';
		callback: [self loginAsRobert];
		with: 'Als Pape (Admin) anmelden'