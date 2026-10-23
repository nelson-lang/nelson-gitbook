#import "../nelson_help.typ": *

= resize <elementary_functions:7_indexing_dimensions.resize>

Redimensionne un tableau par troncature ou remplissage.

== Syntaxe

- #raw("B = resize(A, m)");
- #raw("B = resize(A, sz)");
- #raw("B = resize(A, sz, 'FillValue', v)");

== Argument d'entrée

/ A: le tableau à redimensionner.
/ m: une longueur scalaire, pour redimensionner un vecteur.
/ sz: un vecteur de taille #strong[\[m n ...\]]; donnant la taille du résultat.
/ v: la valeur de remplissage des éléments ajoutés (défaut #strong[0]; pour un tableau numérique).

== Argument de sortie

/ B: le tableau redimensionné, de la taille demandée et de la classe de #strong[A];.

== Description

#strong[resize]; renvoie un tableau de la taille demandée. Le long de chaque dimension, les éléments de #strong[A]; au-delà de la nouvelle taille sont supprimés et les positions au-delà des données d'origine sont remplies avec une valeur de remplissage, qui vaut #strong[0]; pour un tableau numérique sauf si #strong['FillValue']; est fourni. Une taille scalaire redimensionne la longueur d'un vecteur en conservant son orientation.


== Exemple

``````matlab
resize([1 2 3], 6)
``````


== Voir aussi

#nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
