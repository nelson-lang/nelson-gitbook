#import "nelson_help.typ": *

= history <history_manager:history>

history manager.

== Syntax

- #raw("history()");
- #raw("c = history()");
- #raw("s = history('size')");
- #raw("f = history('filename')");
- #raw("l = history('enable_save')");
- #raw("c = history('get')");
- #raw("history('display')");
- #raw("history('save')");
- #raw("history('load')");
- #raw("history('clear')");
- #raw("history('duplicated')");
- #raw("history('saveafter')");
- #raw("history('removeexit')");
- #raw("history('size', new_size)");
- #raw("history('enable_save', true_false)");
- #raw("history('delete', lines)");
- #raw("history('append', str)");
- #raw("history('filename', name)");
- #raw("history('load', filename_history)");
- #raw("history('save', filename_history)");
- #raw("history('duplicated', true_false)");
- #raw("history('removeexit', true_false)");
- #raw("history('get', lines)");
- #raw("history('saveafter', nb_commands)");

== Input argument

/ new\_size: a integer value: new size max of history.
/ true\_false: a logical.
/ lines: a integer value or a vector of size 1x2.
/ str: a string.
/ name: a string: new default history filename
/ filename\_history: a string: filename
/ nb\_commands: a integer value: number of commands.

== Output argument

/ c: a cell of strings.
/ l: a logical.
/ s: a integer value.
/ f: a string.

== Description

#strong[history()]; displays the current Nelson history.

 #strong[c \= history()]; returns the current Nelson history in a cell of strings.

 #strong[s \= history('size')]; returns history size max.

 #strong[f \= history('filename')]; returns the history filename.

 #strong[l \= history('enable\_save')]; returns the history manager state.

 #strong[c \= history('get')]; returns the current Nelson history in a cell of strings.

 #strong[history('display')]; displays the current Nelson history.

 #strong[history('save')]; saves current history file.

 #strong[history('load')]; load current history file.

 #strong[history('clear')]; clears history.

 #strong[history('duplicated')]; get state about save of consecutive duplicated commands.

 #strong[history('saveafter')]; get state about save the history after nth commands.

 #strong[history('removeexit')]; get state about do not save exit in history file.

 #strong[history('size', new\_size)]; set history size max with#strong[new\_size];.

 #strong[history('enable\_save', true\_false)]; set the history manager state: false for 'off', true for 'on'.

 #strong[history('delete', lines)]; deletes lines by index: a scalar value or a vector 1x2.

 #strong[history('append', str)]; append command to history.

 #strong[history('filename', name)]; set the history filename.

 #strong[history('load', filename\_history)]; load history file.

 #strong[history('save', filename\_history)]; save history file

 #strong[history('duplicated', true\_false)]; set state about consecutive duplicated commands. true remove duplicated.

 #strong[history('removeexit', true\_false)]; set state about do not save exit in history file.

 #strong[history('get', lines)]; returns the current Nelson history in a cell of strings by index: a scalar value or a vector 1x2.

 #strong[history('saveafter', nb\_commands)]; saves the history file after#strong[nb\_commands]; statements are added to the file.

 #strong[Tips];: You can share your history file in the cloud by adding a few lines of code to your user startup file.

 If nelson launched with '--nouserstartup' option, history file will be not loaded at startup and not saved at exit.


== Examples

Example to share your history file in OneDrive cloud

``````matlab
OneDrivePath = getenv('OneDrive');
if (strcmp(OneDrivePath, '') == false)
  NelsonOneDrivePath = [OneDrivePath, '/Nelson'];
  mkdir(NelsonOneDrivePath);
  NelsonOneDrivePathFilename = [NelsonOneDrivePath, '/', 'Nelson.history'];
 history('filename', NelsonOneDrivePathFilename);
  history('load', NelsonOneDrivePathFilename);
end
``````

``````matlab
history()
c = history()
``````


== See also

#nlink(<stream_manager:diary>)[diary];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
