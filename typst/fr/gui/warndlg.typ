#import "nelson_help.typ": *

= warndlg <gui:warndlg>

Cree une boite de dialogue d'avertissement.

== Syntaxe

- #raw("h = warndlg");
- #raw("h = warndlg(message)");
- #raw("h = warndlg(message, title)");
- #raw("h = warndlg(message, title, mode)");

== Argument d'entrée

/ message: Warning text. Use a character vector, string, or cell array of character vectors.

== Argument de sortie

/ h: Graphics figure handle.

== Description

warndlg creates a warning message dialog and returns a graphics figure handle.


== Exemples

Creer une boite d avertissement.

``````matlab
f = warndlg('Check the input value.', 'Warning', 'non-modal');
drawnow();
``````


#align(center)[#image("warndlg_example.svg")]
Create a warning dialog with several lines.

``````matlab
h = warndlg({'Input is empty.', 'Default values will be used.'}, 'Warning', 'non-modal');
close(h)
``````


== Voir aussi

#nlink(<gui:msgbox>)[msgbox];, #nlink(<gui:helpdlg>)[helpdlg];, #nlink(<gui:errordlg>)[errordlg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version aide API dialogue mise a jour.],
)

// Auteur: Allan CORNET
