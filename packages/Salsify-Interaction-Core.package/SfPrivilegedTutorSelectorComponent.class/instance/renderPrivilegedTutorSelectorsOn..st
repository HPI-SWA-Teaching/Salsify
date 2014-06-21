rendering
renderPrivilegedTutorSelectorsOn: html	
	self createUserList. 
	self course privilegedTutors do: [ :each |
	html select
			class: 'groupselect select';
			list: self userList ;
			callback: [: value | self validateTutorChange: value. self course addPrivilegedTutor: value];
			onChange: (html scriptaculous updater
									id: 'ptutorSelectorForm';
									callback: [:r | self renderPrivilegedTutorSelectorsOn: r];
									triggerForm: 'ptutorSelectorForm';
									onStatus: 200 do: 'saveNotification("ptutorSelectorForm")'); 
				selected: each.].
	self createFreeUserList. 					
	html select
			class: 'pgroupselect select';
			list: self freeUserList ; 
			callback: [: value | self validateTutorChange: value. self course addPrivilegedTutor: value.	];
			onChange: (html scriptaculous updater
									id: 'ptutorSelectorForm';
									callback: [:r | self renderPrivilegedTutorSelectorsOn: r];
									triggerForm: 'ptutorSelectorForm';
									onStatus: 200 do: 'saveNotification("ptutorSelectorForm")');
			selected: ''