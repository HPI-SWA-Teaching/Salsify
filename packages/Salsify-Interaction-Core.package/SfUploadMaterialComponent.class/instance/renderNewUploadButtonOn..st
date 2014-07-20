as yet unclassified
renderNewUploadButtonOn: html 
	html anchor id: 'uploadRenderButton' ; 
			onClick: ( html scriptaculous updater
						id: 'newUpload'; 
						callback: [ :ajaxHtml | self renderNewUploadOn: ajaxHtml ]); 
						with: [html image id:'plusButton';
								url: SfLibrary / #plusbuttonSvg]