#import "../nelson_help.typ": *

= num2str <string:1_create_convert_text.num2str>

Convertit des nombres en tableau de caractères.

== Syntaxe

- #raw("S = num2str(A)");
- #raw("S = num2str(A, precision)");
- #raw("S = num2str(A, formatSpec)");

== Argument d'entrée

/ A: une matrice numérique ou un tableau logique.
/ precision: un entier positif : nombre maximal de chiffres significatifs.
/ formatSpec: un tableau de caractères : format des champs de sortie.

== Argument de sortie

/ S: un tableau de caractères : représentation textuelle du tableau d'entrée.

== Description

#strong[num2str]; convertit des nombres en tableau de caractères.

 #strong[num2str]; supprime les espaces en tête d'un tableau de caractères. Pour un meilleur contrôle du résultat, utilisez#strong[sprintf];.


== Exemple

``````matlab
R = num2str(pi, 4)
R = num2str(magic(3))
``````


== Voir aussi

#nlink(<string:1_create_convert_text.int2str>)[int2str];, #nlink(<string:1_create_convert_text.sprintf>)[sprintf];, #nlink(<string:1_create_convert_text.mat2str>)[mat2str];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
