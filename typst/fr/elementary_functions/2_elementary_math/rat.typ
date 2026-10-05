#import "../nelson_help.typ": *

= rat <elementary_functions:2_elementary_math.rat>

Approximation par une fraction rationnelle.

== Syntaxe

- #raw("[N, D] = rat(X)");
- #raw("[N, D] = rat(X, tol)");
- #raw("S = rat(X)");
- #raw("S = rat(X, tol)");

== Argument d'entrée

/ X: Tableau d'entrée : réel ou complexe, scalaire, vecteur ou matrice (single ou double).
/ tol: Tolérance : scalaire. La valeur par défaut est #strong[1e-6 \* norm(X(:), 1)];.

== Argument de sortie

/ N: Numérateur : tableau de même taille que #strong[X];, ou le tableau de caractères de la fraction continue lorsqu'une seule sortie est demandée.
/ D: Dénominateur : tableau de même taille que #strong[X];.

== Description

#strong[\[N, D\] \= rat(X)]; renvoie deux tableaux d'entiers tels que #strong[N .\/ D]; soit proche de #strong[X]; au sens où #strong[abs(N .\/ D - X) \<\= tol];.

 Les approximations rationnelles sont obtenues en tronquant des développements en fraction continue.

 #strong[S \= rat(X)]; renvoie la représentation en fraction continue sous forme d'un tableau de caractères.


== Exemple

``````matlab
[N, D] = rat(pi)
S = rat(pi)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.rats>)[rats];, #nlink(<display_format:format>)[format];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
