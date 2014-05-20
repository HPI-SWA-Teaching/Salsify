css
controlElementsCss
^ '

input, a.button, textarea {
	margin: 2mm;
	text-decoration:none;
	font-weight: normal;
	font-size: 10pt;
	color: black;
}

input[type="checkbox"] {
	margin-bottom: 5mm
}

input[type="file"] {  
	font-weight: bold;
}

label {
	display:block;
	font-size:11pt;
	font-weight:bold;
	margin: 3mm 2mm;
}

input[type="text"], input[type="password"] , textarea{
	border-width: 1px;
	padding: 1.5mm 0 1.5mm 2mm;
	border-style: solid;
	border-color: #d8d8d8;
	border-top-color: #c1c1c1;
	font-size:13pt;
	line-height:1.3em
}

input[type="text"]:hover, input[type="password"]:hover, textarea:hover {
	box-shadow: rgba(0,0,0,0.1) 0 1px 2px inset;
}

input[type="text"]:focus, input[type="password"]:focus, textarea:focus {
	box-shadow: rgba(0,0,0,0.1) 0 1px 2px inset!important;
}



input[type="submit"], button, a.button {
	background-image: linear-gradient(to bottom, #F7F7F7, #ECECEC);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f7f7f7), color-stop(100%,#ececec));
	border: 1px solid #C5C5C5;
	border-radius: 0.7mm 0.7mm 0.7mm 0.7mm;
	cursor: pointer;
	font-weight: bold;
	margin-top: 5mm;
	outline: medium none;
	padding: 2mm 3mm;
}

input[type="submit"]:hover, button:hover, a.button:hover {
	border-color: #bbbbbb;
	border-radius: 0.7mm;
	background-image: linear-gradient(to bottom , #fefefe, #ECECEC);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fefefe), color-stop(100%,#ECECEC));
	box-shadow:rgba(0,0,0,0.1) 0 0.2mm 0.3mm;
}

input[type="submit"]:active, button:active,  a.button:active {
	box-shadow:rgba(0,0,0,0.2) 0px 1px 2px 0px inset;
	outline: none;
}

input:focus, a.button:focus, textarea:focus {
	border-color: #a8a8a8
}


a.bigButton {
	padding: 2mm 1.5cm;
	font-size: 11pt;
	margin: 0mm; 
}

input[type="radio"] {
	margin-top:4mm;
}



.formTable input[type="text"] , .formTable textarea{
	display: block;
	width: 10cm;
}

::-moz-focus-inner {
	border: 0;
}



.topRightButton {
	position: absolute;
	top: 0;
	right: 3mm;
}

.inlineform {
	display: inline;
}

'
