rendering
renderPrivilegedTutorSelectorsOn: html	
	|idex| 
	idex := 0. 
	self createAvailableUserList. 
	self course privilegedTutors do: [ :each | idex:= idex + 1. 
	html div 
		class: 'privilegedTutors'; 
		with: [ html span
				class: 'priviligedTutorName'; 
				with: [ html text: each]. 
			    html 
				form id: 'privilegedTutor', idex ; 
				with: [ html hiddenInput 
					 	name: 'privilegedTutor';
						callback: [:value | self removePrivilegedTutor: value]; 
						value: each.
					    html anchor id: 'submitSubmissionGradingButton' ; 
						class: 'button submissionGradingButton';  
						onClick: ( html scriptaculous updater
							id: 'privilegedTutorInfo'; 
							triggerForm: ('privilegedTutor',  idex);
							callback: [ :ajaxHtml | self renderContentOn: ajaxHtml ]); 
						with: [html text: 'Löschen']]]].				
	html form id: 'selectedTutorForm'; 
	with: [ html select
			class: 'pgroupselect select';
			list: self availableUserList ; 
			callback: [: value | self addPrivilegedTutor: value];
			onChange: (html scriptaculous updater
							id: 'privilegedTutorInfo';
							callback: [:r | self renderContentOn: r];
							triggerForm: 'selectedTutorForm';
							onStatus: 200 do: 'saveNotification("ptutorSelectorForm")');
			selected: '' ]