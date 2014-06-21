rendering
renderPrivilegedTutorSelectorsOn: html
	self createUserList.
			html select
				class: 'pgroupselect select';
				list: 'Janos';
				selected: (SfUser new username: 'Janos'); 
				callback: [: value | self validateTutorChange: value. self course addPrivilegedTutor: value];
				onChange: (self halt)