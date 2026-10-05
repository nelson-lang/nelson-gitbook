#import "nelson_help.typ": *

= convhulln <geometry:convhulln>

Enveloppe convexe en N dimensions

== Syntaxe

- #raw("K = convhulln(P)");
- #raw("[K, V] = convhulln(P)");
- #raw("K = convhulln(P, options)");

== Description

#strong[convhulln]; calcule les facettes de l'enveloppe convexe de la matrice de points #strong[P];.

 Les lignes de #strong[K]; contiennent des indices de points a partir de un.


== Exemple

Enveloppe convexe d'un carre.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
[K, A] = convhulln(P)
``````


== Voir aussi

#nlink(<geometry:convhull>)[convhull];, #nlink(<geometry:delaunayn>)[delaunayn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
