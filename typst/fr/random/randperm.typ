#import "nelson_help.typ": *

= randperm <random:randperm>

Permutation aléatoire de valeurs entières.

== Syntaxe

- #raw("p = randperm(n, k)");

== Argument d'entrée

/ n: Nombre d'entiers dans l'intervalle d'échantillonnage (entier positif).
/ k: Nombre d'entiers à sélectionner (entier positif).

== Argument de sortie

/ p: un vecteur ligne.

== Description

#strong[p \= randperm(n)]; renvoie un vecteur ligne contenant une permutation aléatoire de #strong[1:n];.


== Exemple

``````matlab
randperm(7)
``````


== Voir aussi

#nlink(<random:rand>)[rand];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.15.0], [ajout du second argument d'entrée pour le nombre d'éléments à sélectionner],
)

// Auteur: Allan CORNET
