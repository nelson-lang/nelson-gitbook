#import "nelson_help.typ": *

= randi <random:randi>

Entier aléatoire.

== Syntaxe

- #raw("X = randi(imax)");
- #raw("X = randi(imax, n)");
- #raw("X = randi(imax, sz)");
- #raw("X = randi(imax, ..., typename)");
- #raw("X = randi(imax, ..., 'like', p)");
- #raw("X = randi([imin, imax], ...)");

== Argument d'entrée

/ imax: Valeur entière maximale (incluse).
/ imin: Valeur entière minimale (incluse).
/ n: Génère une matrice n-par-n.
/ sz: Vecteur de taille spécifiant la taille du tableau de sortie.
/ typename: Type de données de sortie : "single", "double", "int8", "uint8", "int16", "uint16", "int32", "uint32" ou "logical".
/ p: Tableau dont le type et la complexité sont utilisés pour la sortie.

== Argument de sortie

/ X: Tableau d'entiers aléatoires.

== Description

#strong[randi]; renvoie des entiers aléatoires tirés d'une distribution uniforme discrète.

 X \= randi(imax) renvoie un entier scalaire aléatoire entre 1 et imax.

 X \= randi(imax, n) renvoie une matrice n-par-n d'entiers aléatoires entre 1 et imax.

 X \= randi(imax, sz) renvoie un tableau dont le vecteur de taille sz définit size(X).

 X \= randi(imax, ..., typename) renvoie un tableau d'entiers aléatoires du type typename.

 X \= randi(imax, ..., 'like', p) renvoie un tableau d'entiers aléatoires similaire à p (même type et complexité).

 X \= randi(\[imin, imax\], ...) renvoie des entiers aléatoires entre imin et imax.


== Exemples

``````matlab

X = randi(10)

``````

``````matlab

X = randi(10, 3, 4)

``````

``````matlab

X = randi(10, [3 4])

``````

``````matlab

X = randi(10, 3, 4, 'int32')

``````

``````matlab

p = single([3 3]);
X = randi(10, 3, 3, 'like', p)

``````

``````matlab

X = randi([5, 15], 2, 3)

``````


== Voir aussi

#nlink(<random:rng>)[rng];, #nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<constructors_functions:eye>)[eye];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
