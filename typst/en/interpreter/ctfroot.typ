#import "nelson_help.typ": *

= ctfroot <interpreter:ctfroot>

Root of the extracted application archive.

== Syntax

- #raw("directory = ctfroot()");

== Output argument

/ directory: Absolute path as a character vector.

== Description

#strong[ctfroot]; returns the private temporary directory into which the launcher extracted the application archive. It remains available in graphical callbacks and does not depend on a mutable environment variable.

 The function raises an error outside deployment. Use #strong[isdeployed]; to choose between development and application paths. The compiler module is not required at runtime.

 The current format stores application files under #strong[roots\/N];, according to the manifest search roots. No executable-name folder is added. For a resource beside a function, prefer #strong[fullfile(fileparts(mfilename('fullpath')), 'data.txt')];. Explicitly include computed resources with #strong[-a];.

 This directory is removed after normal application shutdown. Do not use it for persistent output.


== Used function(s)

isdeployed

== Example

``````matlab
if isdeployed()
  directory = ctfroot()
end
``````


// Author: Allan CORNET
