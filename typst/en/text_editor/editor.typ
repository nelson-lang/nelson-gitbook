#import "nelson_help.typ": *

= editor <text_editor:editor>

call the embedded text editor.

== Syntax

- #raw("editor()");
- #raw("editor(filename)");
- #raw("editor(filename, line)");
- #raw("editor(filename, line, column)");
- #raw("editor('editor_command', cmd)");

== Input argument

/ filename: a string: filename to open.
/ line: a number: line to place the cursor on.
/ column: a number: column of that line.
/ cmd: a string representing the command to launch your preferred code editor.

== Description

#strong[editor]; opens an existing file in the nelson's editor.

 #strong[editor]; must be considered as internal and #strong[edit]; must be preferred.

 Set another text editor as default: (example with VS code)

 #raw("editor('editor_command', 'code')");

 To restore the default editor, use:

 #raw("editor('editor_command', '\n        ')");

 Change text editor is persistent and will be saved in a configuration file.

 Debugger keys in the editor: F12 set\/clear breakpoint, F5 run or continue, F10 step, F11 step in, Shift+F11 step out, Shift+F5 stop, F9 evaluate selection, F6 pause, Ctrl+F10 run to here. See the debugging workflow page.


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
  [2.0.0], [Debugger keys and breakpoint markers],
  [2.0.0], [editor(filename, line, column) added],
)

// Author: Allan CORNET
