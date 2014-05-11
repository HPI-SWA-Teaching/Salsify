debug-only
renderDebugLoginShortcutsOn: html
	html anchor 
		class: 'button';
		callback: [self loginAsRobert];
		with: 'Als Hirschfeld (Admin) anmelden'