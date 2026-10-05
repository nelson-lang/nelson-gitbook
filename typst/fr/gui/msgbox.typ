#import "nelson_help.typ": *

= msgbox <gui:msgbox>

Cree une boite de dialogue de message.

== Syntaxe

- #raw("h = msgbox(message)");
- #raw("h = msgbox(message, title)");
- #raw("h = msgbox(message, title, icon)");
- #raw("h = msgbox(message, title, icon, mode)");
- #raw("h = msgbox(message, mode)");

== Argument d'entrée

/ message: Message text. Use a character vector, string array, or cell array of character vectors for multiple lines.

== Argument de sortie

/ h: Graphics figure handle.

== Description

msgbox creates a message dialog and returns a graphics figure handle. The handle can be used with get, set, close, delete, and waitfor.


== Exemples

Creer une boite de message.

``````matlab
h = msgbox({'Operation', 'completed'}, 'Status', 'help', 'non-modal');
``````


#align(center)[#image("msgbox_example.svg")]
Create a plain message box.

``````matlab
h = msgbox('Ready.', 'Status', 'none', 'non-modal');
close(h)
``````


== Voir aussi

#nlink(<gui:helpdlg>)[helpdlg];, #nlink(<gui:warndlg>)[warndlg];, #nlink(<gui:errordlg>)[errordlg];, #nlink(<gui:questdlg>)[questdlg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version aide API dialogue mise a jour.],
)

// Auteur: Allan CORNET
