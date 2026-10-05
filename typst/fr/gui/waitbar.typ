#import "nelson_help.typ": *

= waitbar <gui:waitbar>

Cree ou met a jour une figure de progression.

== Syntaxe

- #raw("h = waitbar(x)");
- #raw("h = waitbar(x, message)");
- #raw("h = waitbar(x, h)");
- #raw("h = waitbar(x, h, message)");

== Argument d'entrée

/ x: Progress value. Values below 0 are clipped to 0; values above 1 are clipped to 1.

== Argument de sortie

/ h: Graphics figure handle. The progress value is stored in UserData.

== Description

waitbar creates a progress figure or updates an existing one. The handle supports set, get, close, delete, and waitfor.


== Exemples

Creer et mettre a jour une barre d attente.

``````matlab
h = waitbar(0.25, 'Starting');
pause(0.1);
h = waitbar(0.75, h, 'Almost done');
``````


#align(center)[#image("waitbar_example.svg")]
Update a wait bar inside a loop.

``````matlab
h = waitbar(0, 'Processing');
for k = 1:3
  h = waitbar(k / 3, h, 'Processing');
end
close(h)
``````


== Voir aussi

#nlink(<gui:dialog>)[dialog];, #nlink(<gui:uiprogressdlg>)[uiprogressdlg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version aide API dialogue mise a jour.],
)

// Auteur: Allan CORNET
