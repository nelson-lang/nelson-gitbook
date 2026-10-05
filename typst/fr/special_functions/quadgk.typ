#import "nelson_help.typ": *

= quadgk <special_functions:quadgk>

Evalue numeriquement une integrale par quadrature Gauss-Kronrod.

== Syntaxe

- #raw("q = quadgk(fun, a, b)");
- #raw("[q, errbnd] = quadgk(fun, a, b)");
- #raw("[...] = quadgk(fun, a, b, name, value)");

== Argument d'entrée

/ fun: Integrande : handle de fonction.
/ a, b: Bornes d'integration. Les bornes complexes finies sont integrees sur des segments droits.
/ name, value: Options : 'RelTol', 'AbsTol', 'Waypoints' et 'MaxIntervalCount'.

== Argument de sortie

/ q: Integrale calculee.
/ errbnd: Borne approximative de l'erreur absolue.

== Description

#strong[quadgk]; integre une integrande scalaire vectorisee avec une quadrature Gauss-Kronrod adaptive.

 #strong[Waypoints]; decoupe l'integrale en sous-intervalles. Des points complexes definissent un contour polygonal.


== Exemple

``````matlab
[q, errbnd] = quadgk(@(x) exp(-x.^2), 0, Inf)
``````


== Voir aussi

#nlink(<special_functions:integral>)[integral];, #nlink(<special_functions:integral2>)[integral2];, #nlink(<special_functions:integral3>)[integral3];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
