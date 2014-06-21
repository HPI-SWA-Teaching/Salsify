as yet unclassified
baseline: spec
	<baseline>
		spec
			for: #'common'
			do: [
		"packages"
		spec
			package: 'Salsify-Data';
			package: 'Salsify-Interaction-Core' with: [ spec requires: #('Salsify-Data' 'Seaside3' 'Zodiac' 'Magritte')];
			package: 'Salsify-Interaction-test' with: [ spec requires: #('Salsify-Interaction-Core' 'Parasol' 'Magritte') ];
			package: 'Salsify-Tests'  with: [spec requires: #('Salsify-Interaction-Core' 'Magritte' 'Parasol')];
			package: 'Salsify-TravisSupport' with: [ 
				spec
					requires: #('Salsify-Interaction-Core');
					postLoadDoIt: #travisPrepare. ];
			yourself.
		spec
			group: 'default' with: #('Salsify-Interaction-Core');
			group: 'Tests' with: #('Salsify-Interaction-test' 'Salsify-Tests');
			group: 'TravisCI' with: #('Tests' 'Salsify-TravisSupport');
			yourself.
		"external projects"
		spec
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #stable;
					loads: #('Base' 'Scriptaculous' 'Zinc');
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
					yourself];
			project: 'Zodiac' with: [
				spec className: 'ConfigurationOfZodiac';
				versionString: #stable;
				repository: 'http://www.squeaksource.com/MetacelloRepository';
				yourself];
			project: 'Parasol' with: [
				spec
					className: 'ConfigurationOfParasol';
					repository: 'http://ss3.gemtalksystems.com/ss/Parasol';
					versionString: #development;
					loads: #('dev');
					yourself];
			project: 'Magritte' with: [
				spec
					className: 'ConfigurationOfMagritte3';
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main';
					versionString: #stable;
					load: #('Seaside');
					yourself];
			yourself].