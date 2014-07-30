| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'Salsify';
  repository: 'filetree://', gitPath, '/Salsify/packages';
  get.

Metacello new
  baseline: 'Salsify';
  repository: 'filetree://', gitPath, '/Salsify/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSalsify' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
