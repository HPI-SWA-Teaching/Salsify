rendering
renderOpenIDLoginLinkOn: html
	html anchor
			id: 'openIDLoginButton';
			class: 'button';
			callback: [self openIDLogin: html];
			with: [html text: 'Anmelden '.
					html image
							url: NDLibrary / #logoHPISvg; 
							id: 'openIDLogo';
							altText: ''.
					html text: 'mit HPI-OpenID']