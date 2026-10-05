#import "nelson_help.typ": *

= errordlg <gui:errordlg>

Cree une boite de dialogue d'erreur.

== Syntaxe

- #raw("h = errordlg");
- #raw("h = errordlg(message)");
- #raw("h = errordlg(message, title)");
- #raw("h = errordlg(message, title, mode)");

== Argument d'entrée

/ message: Error text. Use a character vector, string, or cell array of character vectors.

== Argument de sortie

/ h: Graphics figure handle.

== Description

errordlg creates an error message dialog and returns a graphics figure handle.


== Exemples

Creer une boite d erreur.

``````matlab
h = errordlg('Invalid value.', 'Error', 'non-modal');
``````


#align(center)[#image("errordlg_example.svg")]
Create the default error dialog.

``````matlab
h = errordlg();
close(h)
``````


== Voir aussi

#nlink(<gui:msgbox>)[msgbox];, #nlink(<gui:helpdlg>)[helpdlg];, #nlink(<gui:warndlg>)[warndlg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version aide API dialogue mise a jour.],
)

// Auteur: Allan CORNET
