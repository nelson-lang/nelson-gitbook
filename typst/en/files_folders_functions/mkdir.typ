#import "nelson_help.typ": *

= mkdir <files_folders_functions:mkdir>

Creates a new directory.

== Syntax

- #raw("mkdir(dirname)");
- #raw("mkdir(parentdir, dirname)");
- #raw("status = mkdir(dirname)");
- #raw("status = mkdir(parentdir, dirname)");
- #raw("[status, msg] = mkdir(dirname)");
- #raw("[status, msg] = mkdir(parentdir, dirname)");
- #raw("[status, msg, msgID] = mkdir(dirname)");
- #raw("[status, msg, msgID] = mkdir(parentdir, dirname)");

== Input argument

/ dirname: a string: directory name to create
/ parentdir: a string: a directory in which the dirname directory will be created

== Output argument

/ status: a logical true or false
/ msg: a string: error message
/ msgID: a string: message identifier

== Description

Creates a directory named dirname in the directory parent.

 If no parent directory is specified the present working directory is used.

 If directory is created or already existing, status is true, otherwise it will be false.


== Example

``````matlab
mkdir(tempdir(), 'subdir_example')
if isdir([tempdir(), 'subdir_example'])
	disp('OK')
else
	disp('NOT OK')
end

``````


== See also

#nlink(<files_folders_functions:isdir>)[isdir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.4.0], [input arguments support scalar string array type],
  [2.0.0], [msgID output argument added.],
)

// Author: Allan CORNET
