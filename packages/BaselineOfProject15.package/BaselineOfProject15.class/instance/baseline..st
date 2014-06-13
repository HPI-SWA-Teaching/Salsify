as yet unclassified
baseline: spec
	<baseline>
		spec
			for: #'common'
			do: [
		"packages"
		spec
			package: 'NeuDeli-Data';
			package: 'NeuDeli-Interaction-Core' with: [ spec requires: #('NeuDeli-Data' 'Seaside3' 'Zodiac')];
			package: 'NeuDeli-Interaction-test' with: [ spec requires: #('NeuDeli-Interaction-Core' 'Parasol') ];
			package: 'NeuDeli-Tests'  with: [spec requires: #('NeuDeli-Interaction-Core' 'Parasol')];
			package: 'NeuDeli-TravisSupport' with: [ 
				spec
					requires: #('NeuDeli-Interaction-Core');
					postLoadDoIt: #travisPrepare. ];
			yourself.
			"package: 'Zodiac-Core'  with: [spec requires: #('default')]."
		"groups"
		spec
			group: 'default' with: #('NeuDeli-Interaction-Core');
			group: 'Tests' with: #('NeuDeli-Interaction-test' 'NeuDeli-Tests');
			group: 'TravisCI' with: #('Tests' 'NeuDeli-TravisSupport');
			yourself.
		"external projects"
		spec
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #stable;
					loads: #('Base' "'Seaside-HTML5'" 'Zinc');
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
			yourself].