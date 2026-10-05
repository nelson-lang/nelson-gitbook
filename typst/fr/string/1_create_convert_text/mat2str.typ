#import "../nelson_help.typ": *

= mat2str <string:1_create_convert_text.mat2str>

Conversion matrice -\> chaîne.

== Syntaxe

- #raw("res = mat2str(M)");
- #raw("res = mat2str(M, 'class')");
- #raw("res = mat2str(M, P, 'class')");

== Argument d'entrée

/ M: une matrice 2D numérique ou logique.
/ P: entier : précision, 15 par défaut.

== Argument de sortie

/ res: une chaîne

== Description

#strong[mat2str]; convertit une matrice en chaîne.

 Cette chaîne peut être utilisée pour reconstruire la matrice d'origine avec la fonction #strong[execstr];.


== Exemple

``````matlab
R = mat2str(pi)
R = mat2str(pi, 'class')
R = mat2str(pi, 4)
R = mat2str(pi + i, 'class')
execstr(['RB = ', R])

``````


== Voir aussi

#nlink(<core:execstr>)[execstr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
