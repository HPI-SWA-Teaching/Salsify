as yet unclassified
renderContentOn: html 
	self renderHeadingOn: html. 
	html div class: 'uploadedMaterialInfo'; 
		with: [
			((self session user isAdmin) | (self session user isPrivilegedTutorIn: self course)) ifTrue: [
				html table class: 'materialTable';
					with: [ self renderMaterialUploadsPrivilegedViewOn: html].	
		 		html div id: 'newUpload'; 
					with: [ self renderNewUploadButtonOn: html]]
			ifFalse: [ html table class: 'materialTable';
					with:  [self renderMaterialUploadsStudentViewOn: html]]]