#import "nelson_help.typ": *

= editor <text_editor:editor>

call the embedded text editor.

== Syntax

- #raw("editor()");
- #raw("editor(filename)");
- #raw("editor('editor_command', cmd)");

== Input argument

/ filename: a string: filename to open.
/ cmd: a string representing the command to launch your preferred code editor.

== Description

#strong[editor]; opens an existing file in the nelson's editor.

 #strong[editor]; must be considered as internal and #strong[edit]; must be preferred.

 Set another text editor as default: (example with VS code)

 #raw("editor('editor_command', 'code')");

 To restore the default editor, use:

 #raw("editor('editor_command', '\n        ')");

 Change text editor is persistent and will be saved in a configuration file.


== Example

``````matlab
edit('edit')
if ispc()
  editor('editor_command ', 'notepad')
else
  editor('editor_command ', 'vim')
end
edit('edit')
% restore default editor
editor('editor_command ', '')

``````


== See also

#nlink(<text_editor:edit>)[edit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.10.0], [Option to change default text editor],
)

// Author: Allan CORNET
