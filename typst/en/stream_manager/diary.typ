#import "nelson_help.typ": *

= diary <stream_manager:diary>

Diary of a session.

== Syntax

- #raw("diary()");
- #raw("diary(filename)");
- #raw("diary('off')");
- #raw("diary('on')");
- #raw("onoff = diary('get', 'Diary')");
- #raw("filename = diary('get', 'DiaryFile')");
- #raw("diary('set', 'DiaryFile', filename)");
- #raw("diary('set', 'Diary', onoff)");

== Input argument

/ onoff: a string: 'on' or 'off'.
/ filename: a string: filename of the current diary.

== Output argument

/ onoff: a string: 'on' or 'off'.
/ filename: a string: filename to use for the diary.

== Description

#strong[diary]; creates a log of keyboard input and the resulting text output.

 #strong[diary]; toggles diary mode on and off.

 #strong[diary('off')]; stops recording the session in the diary file.

 #strong[diary('on')]; starts recording a session in a file called 'diary' in the current working directory.

 #strong[diary('set', 'Diary', onoff)]; allows to start or stop the diary.

 #strong[onoff \= diary('get', 'Diary')]; returns the state 'on' or 'off' of the diary.

 #strong[diary(filename)]; records the session in the file named filename.

 #strong[filename \= diary('get', 'DiaryFile')]; returns filename used as diary.

 #strong[diary('set', 'DiaryFile', filename))]; set the filename for the diary.


== Example

``````matlab
filename = diary('get', 'DiaryFile')
onoff = diary('get', 'Diary')
``````


== See also

#nlink(<history_manager:history>)[history];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
