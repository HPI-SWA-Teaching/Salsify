as yet unclassified
baseline: spec
	<baseline>
		spec
			for: #'common'
			do: [
		"packages"
		spec
			package: 'NeuDeli-Interaction-Core';
			package: 'NeuDeli-Interaction-Tests' with: [ spec requires: #('default') ];
			package: 'NeuDeli-Data' with: [spec requires: #('core')];
			package: 'NeuDeli-Tests'  with: [spec requires: #('default')];
			package: 'Zodiac-Core'  with: [spec requires: #('default')].
		"groups"
		spec
			group: 'default' with: #('NeuDeli-Interaction-Core', 'NeuDeli-Data');
			group: 'core' with: #('NeuDeli-Interaction-Core');
			group: 'Tests' with: #('NeuDeli-Interaction-Tests', 'NeuDeli-Tests');
			group: 'TravisCI' with: #('Tests')].
		"external projects"
		spec
			project: 'Seaside3' with: [spec className: 'ConfigurationOfSeaside3'];
			project: 'Zodiac' with: [spec className: 'ConfigurationOfZodiac'];
			project: 'ZincHTTP' with: [spec className: 'ConfigurationOfZincHTTPComponents']