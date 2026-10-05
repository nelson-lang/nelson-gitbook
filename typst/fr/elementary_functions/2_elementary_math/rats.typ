#import "../nelson_help.typ": *

= rats <elementary_functions:2_elementary_math.rats>

Affichage rationnel.

== Syntaxe

- #raw("S = rats(X)");
- #raw("S = rats(X, len)");

== Argument d'entrée

/ X: Tableau d'entrée : réel ou complexe, scalaire, vecteur ou matrice (single ou double).
/ len: Largeur de champ : scalaire. La valeur par défaut est #strong[13];.

== Argument de sortie

/ S: Tableau de caractères des approximations rationnelles.

== Description

#strong[S \= rats(X)]; utilise #strong[rat]; pour afficher les approximations rationnelles des éléments de #strong[X]; dans un champ de largeur fixe.

 La longueur de chaîne de chaque élément est #strong[len + 1]; afin de tenir compte du caractère #strong['\/']; inséré entre le numérateur et le dénominateur. Des astérisques sont utilisées pour les éléments qui ne peuvent pas être affichés dans l'espace alloué.


== Exemple

``````matlab
S = rats(1 ./ (1:5))
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.rat>)[rat];, #nlink(<display_format:format>)[format];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
