javascript
disableAutocompleteJs
	^ '
	function disableAutocomplete() {
		var forms = document.getElementsByTagName("form");
		for (var i=0; i<forms.length; i++) {
			forms[i].setAttribute("autocomplete", "off");
		}
	}
	'