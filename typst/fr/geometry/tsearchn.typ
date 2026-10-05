#import "nelson_help.typ": *

= tsearchn <geometry:tsearchn>

Localisation de point dans une triangulation

== Syntaxe

- #raw("idx = tsearchn(P, T, Q)");
- #raw("[idx, bary] = tsearchn(P, T, Q)");

== Description

#strong[tsearchn]; trouve le simplexe contenant chaque point de requete.

 Les points hors triangulation retournent #strong[NaN];.


== Exemple

Trouver le triangle contenant un point et ses coordonnees barycentriques.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
T = delaunayn(P);
[idx, bary] = tsearchn(P, T, [0.25 0.25])
``````


== Voir aussi

#nlink(<geometry:dsearchn>)[dsearchn];, #nlink(<geometry:delaunayn>)[delaunayn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
