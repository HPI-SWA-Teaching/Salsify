as yet unclassified
baseline: spec
	<baseline>
		spec
			for: #'common'
			do: [
		"packages"
		spec
			package: 'Salsify-Data' with: [ spec requires: #('Magritte')];
			package: 'Salsify-Interaction-Core' with: [ spec requires: #('Salsify-Data' 'Seaside3' 'Zodiac')];
			package: 'Salsify-Interaction-test' with: [ spec requires: #('Salsify-Interaction-Core') ];
			package: 'Salsify-Tests'  with: [spec requires: #('Salsify-Interaction-Core')];
			package: 'Salsify-Magritte-Tests' with: [spec requires: #('Salsify-Data' 'Seaside3' 'Magritte')];
			package: 'Salsify-Gemstoneport';
			package: 'Salsify-TravisSupport' with: [ 
				spec
					requires: #('Salsify-Interaction-Core');
					postLoadDoIt: #travisPrepare. ];
			yourself.
		spec
			group: 'default' with: #('Salsify-Interaction-Core');
			group: 'Tests' with: #('Salsify-Tests' 'Salsify-Interaction-test' 'Salsify-Magritte-Tests');
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
			project: 'Magritte' with: [
				spec
					className: 'ConfigurationOfMagritte3';
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main';
					versionString: '3.1.3';
					loads: #('Magritte-Seaside') ;
					file: 'ConfigurationOfMagritte3';
					yourself];
			yourself].