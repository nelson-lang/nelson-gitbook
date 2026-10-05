#import "../nelson_help.typ": *

= hankel <elementary_functions:6_matrix_generation.hankel>

Matrice de Hankel

== Syntaxe

- #raw("H = hankel(c)");
- #raw("H = hankel(c, r)");

== Argument d'entrée

/ c: Première colonne de la matrice de Hankel : vecteur ou scalaire.
/ r: Dernière ligne de la matrice de Hankel : vecteur ou scalaire.

== Argument de sortie

/ H: Matrice de Hankel.

== Description

#strong[H \= hankel(c)]; renvoie une matrice de Hankel carrée dont#strong[c]; est la première colonne et dont les éléments situés sous l'anti-diagonale principale valent zéro.

 #strong[H \= hankel(c, r)]; renvoie une matrice de Hankel avec #strong[c]; comme première colonne et #strong[r]; comme dernière ligne.

 Si le dernier élément de #strong[c]; diffère du premier élément de #strong[r];, Hankel émet un avertissement et utilise le dernier élément de #strong[c]; pour l'anti-diagonale.


== Exemple

``````matlab
c = [1 2 3 4 5];
hankel(c)
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.hilb>)[hilb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
