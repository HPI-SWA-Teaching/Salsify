as yet unclassified
renderSubmitButtonOn: html 
	"html tableData 
		class: 'buttons'; 
		with: [  "
		html anchor
		onClick: (html scriptaculous updater
						id:  'newUpload';
						callback: [:r | self renderNewUploadButtonOn: html]);
		class: 'button';
		with: 'Cancel'. 
		html submitButton with:'Hochladen' 
	