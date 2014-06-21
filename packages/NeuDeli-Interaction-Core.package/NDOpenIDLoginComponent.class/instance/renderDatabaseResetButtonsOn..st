debug-only
renderDatabaseResetButtonsOn: html			
	html anchor
		class: 'button';
		callback: [self session database resetDatabase];
		with: 'Datenbank Leeren'.
					
	html anchor
		class: 'button';
		callback: [self session database resetDatabaseWithTestObjects];
		with: 'Datenbank auf Testdaten zurücksetzen'