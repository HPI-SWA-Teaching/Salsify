rendering
renderPrivilegedTutorSelectorsOn: html
	self createUserList.
	self privilegedTutors do: [:each| 	
			html select
				class: 'groupselect select';
				list: self userList;
				selected: each; 
				callback: [: value | self validateTutorChange: value. self privilegedTutors add: value]; 
						onChange: (html scriptaculous updater
	id: 'ptutorSelectorForm';
	callback: [:r | self renderPrivilegedTutorSelectorsOn: r];
	triggerForm: 'ptutorSelectorForm';
	onStatus: 200 do: 'saveNotification("ptutorSelectorForm")')].
	"test := OrderedCollection new. "
	html select
			class: 'groupselect select';
			list: self userList;
			selected: (SfUser new username: 'Janos'); 
			callback: [: value | self validateTutorChange: value. self privilegedTutors add: value];
			onChange: (html scriptaculous updater
	id: 'ptutorSelectorForm';
	callback: [:r | self renderPrivilegedTutorSelectorsOn: r];
	triggerForm: 'ptutorSelectorForm';
	onStatus: 200 do: 'saveNotification("ptutorSelectorForm")')
	