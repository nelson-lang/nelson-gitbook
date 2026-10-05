#import "../nelson_help.typ": *

= regexprep <string:5_regular_expressions.regexprep>

Remplace du texte avec une expression reguliere.

== Syntaxe

- #raw("newStr = regexprep(str, expression, replace)");
- #raw("newStr = regexprep(..., option)");

== Argument d'entrée

/ str: texte d'entree.
/ expression: expression reguliere.
/ replace: texte de remplacement. Les jetons \$1 et \$& sont acceptes.

== Argument de sortie

/ newStr: texte apres remplacement.

== Description

#strong[regexprep]; remplace les occurrences trouvees par une expression reguliere.


== Exemple

``````matlab

regexprep('a1 b2', '(\w)(\d)', '$2-$1')

``````


== Voir aussi

#nlink(<string:5_regular_expressions.regexp>)[regexp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
