*An open source Course Mangement System based on Seaside.*

# Salsify - SWTI2014-Project-15
[![Build Status](https://travis-ci.org/SWTI2014/SWTI2014-Project-15.svg)](https://travis-ci.org/SWTI2014/SWTI2014-Project-15)

## Installation
### The Environment

Salsify was tested under Pharo2.0. You can download the version of Pharo which fits best to your OS on the offical Pharo Project website:
http://files.pharo.org/platform/

You'll also need Filetree installed to import the source files of Salsify into your image.
If Filetree is not installed in your image you can do so by executing the following script in a Pharo Workspace:

```Smalltalk
Gofer new
      url: 'http://ss3.gemstone.com/ss/FileTree';
      package: 'ConfigurationOfFileTree';
      load.
((Smalltalk at: #ConfigurationOfFileTree) project version: #'stable') load.
```

### External Dependencies

Salsify depends on different frameworks and libraries:
- Seaside 3
- ZincHTTPComponents
- Metacello BaselineOf
- Magritte

If you want to run our acceptance tests you also need Parasol.

If any of the components mentioned above are missing you can install them with the following script (or parts of it):

```Smalltalk
Gofer new
  gemsource: 'metacello';
  package: 'ConfigurationOfMetacello';
  load.
(ConfigurationOfMetacello project version: #previewBootstrap) load.

Gofer new    url:'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
    package: 'ConfigurationOfSeaside3';
    load.
((Smalltalk at: #ConfigurationOfSeaside3) project version: #stable) load.

Metacello new
	configuration: 'Magritte3';
	repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main';
	load: 'Seaside'. 

Gofer it
  url: 'http://mc.stfx.eu/ZincHTTPComponents';
  package: 'ConfigurationOfZincHTTPComponents';
  load.
ConfigurationOfZincHTTPComponents project latestVersion load: 'SSO'.
	
Gofer new
    url: 'http://ss3.gemstone.com/ss/Parasol';
    package: 'ConfigurationOfParasol';
    load.
((Smalltalk at: #ConfigurationOfParasol) project version: #development) load: 'dev'.
```

### Loading the Source Code

If you have the source code of Salsify on your local system open Monticello. Click on +Repository and select the filetree option.
Now choose the package folder of the source code.
After that you can click on open and load the different packages of Salsify.

If you want to use the HPIOpenId Provider for the user authentification you have to add the method newHPIProvider as a method of the CLASS ZnOpenIdProvider.

```Smalltalk
newHPIProvider
	^ self new
		name: 'HPI';
		imgUrl: 'https://openid.hpi.uni-potsdam.de/assets/ctx/1.0-SNAPSHOT/layout/images/hpi_logo_web_80.jpg';
		altText: 'Login with your HPI account';
		discoveryUrl: 'https://openid.hpi.uni-potsdam.de/serve';
		shouldValidateClaimedIdBelongsToEndpoint: true;
		yourself
``` 

### Configure and Start the Server

The easiest way to configure and start the webserver (port 8080) is by executing the following Script:

```Smalltalk
BaselineOfSalsify new travisPrepare.
```

Committed changes to previous release:
- userprofile overview: you can see and edit your personal data, such as your e-mail address, name and github account
- material upload: you as an instructor can now share your class material, so that the students can see and download it
- grading of submissions: you as an instructor or tutor can grade uploaded submissions for the assignments of the students.
- privileged tutor: introduced a new user role privileged tutor, who as the same rights as the instructor for one specific course
- student list: you as an instructor can see a list of all students inrolled in your course
- deletion of submissions: you as student can delete your uploaded submissions
- magritte: added descriptions, reports and some forms
- tests: added unit tests (57% test coverage) and acceptance tests
- travis: most of the tests pass on travis
- failures: fixed some defects
- ported from pharo 1.3 to pharo 2.0
