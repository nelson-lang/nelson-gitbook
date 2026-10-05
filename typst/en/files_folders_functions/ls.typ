#import "nelson_help.typ": *

= ls <files_folders_functions:ls>

List folder contents.

== Syntax

- #raw("ls");
- #raw("ls(name)");
- #raw("res = ls()");
- #raw("res = ls(options)");

== Input argument

/ name: a string: file or directory name.
/ options: vary from system to system.

== Output argument

/ res: On Windows, res is an m-by-n character array of names. m is the number of names and n is the number of characters in the longest name. On Unix platforms is a character vector of names separated by tab and space characters.

== Description

#strong[ls]; is implemented by calling the native operating system's directory listing command-available options will vary from system to system.


== Example

``````matlab
res = ls(nelsonroot())
if ~ispc()
  res = ls(nelsonroot(), '-l')
end
``````


== See also

#nlink(<files_folders_functions:dir>)[dir];, #nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:isfile>)[isfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
