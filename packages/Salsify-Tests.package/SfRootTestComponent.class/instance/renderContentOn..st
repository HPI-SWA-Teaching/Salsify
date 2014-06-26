as yet unclassified
renderContentOn: html

	html form: [ 
	html textInput on: #modelClass of: self.
	html submitButton
		callback: [self call: (Smalltalk at: self modelClass) new asComponent addValidatedForm];
		class: 'button' ;
		id: 'renderButton';
		with: 'renderButton'].