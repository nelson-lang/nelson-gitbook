#import "nelson_help.typ": *

= lookandfeel <gui:lookandfeel>

Apparence et comportement (look and feel) de l'application

== Syntaxe

- #raw("r = lookandfeel()");
- #raw("ce = lookandfeel('available')");
- #raw("p = lookandfeel(lf)");
- #raw("ss = lookandfeel('stylesheet')");
- #raw("pp = lookandfeel('stylesheet', ss)");

== Argument d'entrée

/ lf: a string: look and feel to apply.
/ ss: a string: style sheet to apply.

== Argument de sortie

/ r: a string: current look and feel.
/ ce: a cell of strings: list of look and feel available.
/ ss: a string: current style sheet applied.
/ p: a string: previous look and feel applied.
/ pp: a string: previous style sheet applied.

== Description

#strong[lookandfeel]; gère l'apparence et le comportement de l'application Nelson.


== Exemples

``````matlab

currentlf = lookandfeel();
lfs = lookandfeel('available')
for lf = lfs'
  lookandfeel(lf{1})
  sleep(10);
end
lookandfeel(currentlf)

``````

``````matlab

currentstylesheet = lookandfeel('stylesheet')
stylefilename = [modulepath('gui'), '/resources/darkstyle.qss'];
edit(stylefilename)
newstyle = fileread(stylefilename);
previousstylesheet = lookandfeel('stylesheet', newstyle)
sleep(10);
lookandfeel('stylesheet', previousstylesheet)

``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
