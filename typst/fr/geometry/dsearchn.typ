#import "nelson_help.typ": *

= dsearchn <geometry:dsearchn>

Recherche du point le plus proche

== Syntaxe

- #raw("idx = dsearchn(P, Q)");
- #raw("[idx, dist] = dsearchn(P, Q)");
- #raw("idx = dsearchn(P, T, Q)");
- #raw("idx = dsearchn(P, T, Q, outind)");

== Description

#strong[dsearchn]; retourne le point le plus proche dans #strong[P]; pour chaque point de requete.


== Exemple

Point le plus proche et distance.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
[idx, dist] = dsearchn(P, [0.2 0.1])
``````


== Voir aussi

#nlink(<geometry:tsearchn>)[tsearchn];, #nlink(<geometry:triangulation>)[triangulation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
