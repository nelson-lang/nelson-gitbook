#import "../nelson_help.typ": *

= strjust <string:7_edit_text.strjust>

Justifie les chaînes

== Syntaxe

- #raw("J = strjust(str)");
- #raw("J = strjust(str, side)");

== Argument d'entrée

/ str: vecteur de caractères, cellule de caractères ou tableau de chaînes.
/ side: 'left', 'center', 'right' (par défaut).

== Argument de sortie

/ J: texte justifié

== Description

#strong[J \= strjust(str, side)]; renvoie le texte justifié du côté spécifié par#strong[side];.


== Exemples

``````matlab

S = ["left"; "center"; "right"];
J = strjust (S, 'left')
J = strjust (S, 'center')
J = strjust (S, 'right')
``````

``````matlab
J = strjust('                 text', 'center')
``````


== Voir aussi

#nlink(<string:1_create_convert_text.blanks>)[blanks];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
