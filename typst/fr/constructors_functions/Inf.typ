#import "nelson_help.typ": *

= Inf <constructors_functions:Inf>

Infini

== Syntaxe

- #raw("Inf");
- #raw("inf");
- #raw("Inf(n)");
- #raw("Inf(n, m)");
- #raw("Inf(n, classname)");
- #raw("Inf(n, m, classname)");
- #raw("Inf(classname)");

== Argument d'entrée

/ n: un entier scalaire : nombre de lignes (et de colonnes si m est omis).
/ m: un entier scalaire : nombre de colonnes.
/ classname: une chaîne : 'double' (par défaut) ou 'single'.

== Description

#strong[Inf]; retourne le symbole IEEE Inf (Infini).

 #strong[Inf(n)]; retourne une matrice n-par-n remplie de #strong[Inf];.

 #strong[Inf(n, m)]; retourne une matrice n-par-m remplie de #strong[Inf];.

 L'argument optionnel #strong[classname]; sélectionne la classe du résultat et doit valoir #strong['double']; (par défaut) ou #strong['single'];.


== Exemples

``````matlab
Inf
``````

``````matlab
-Inf + Inf
``````

``````matlab
1.e1000
``````


== Voir aussi

#nlink(<constructors_functions:NaN>)[nan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
