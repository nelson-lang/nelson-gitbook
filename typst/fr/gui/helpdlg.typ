#import "nelson_help.typ": *

= helpdlg <gui:helpdlg>

Cree une boite de dialogue d'aide.

== Syntaxe

- #raw("h = helpdlg");
- #raw("h = helpdlg(message)");
- #raw("h = helpdlg(message, title)");

== Argument d'entrée

/ message: Help text. Use a character vector, string, or cell array of character vectors.

== Argument de sortie

/ h: Graphics figure handle.

== Description

helpdlg creates a help message dialog and returns a graphics figure handle.


== Exemples

Creer une boite d aide.

``````matlab
h = helpdlg('Use the OK button to close this dialog.', 'Help');
``````


#align(center)[#image("helpdlg_example.svg")]
Display several help lines.

``````matlab
h = helpdlg({'Select a file.', 'Then press Open.'}, 'Help');
close(h)
``````


== Voir aussi

#nlink(<gui:msgbox>)[msgbox];, #nlink(<gui:warndlg>)[warndlg];, #nlink(<gui:errordlg>)[errordlg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version aide API dialogue mise a jour.],
)

// Auteur: Allan CORNET
