#import "nelson_help.typ": *

= sort <data_analysis:sort>

Trier les éléments d'un tableau (algorithme de tri rapide).

== Syntaxe

- #raw("B = sort(A)");
- #raw("B = sort(A, dim)");
- #raw("B = sort(..., direction)");
- #raw("B = sort(..., name, value)");
- #raw("B = sort(A, dim, direction, name, value)");
- #raw("[B, I] = sort(...)");

== Argument d'entrée

/ A: une variable Nelson (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
/ dim: Dimension le long de laquelle opérer : entier positif scalaire.
/ direction: Direction du tri : 'ascend' (par défaut) ou 'descend'.
/ name, value: paires nom-valeur en argument.

== Argument de sortie

/ B: tableau trié.
/ I: indices du tri.

== Description

Avec deux sorties, les éléments dont les clés de tri sont équivalentes conservent leur ordre initial. Les indices renvoyés pour des valeurs équivalentes sont croissants dans chaque groupe, quel que soit le sens du tri.

 #strong[sort]; implémente l'algorithme de tri rapide.

 Les paires nom-valeur peuvent être utilisées après la dimension et le sens du tri.

 Arguments paires nom-valeur :

 #strong['MissingPlacement']; - Placement des valeurs manquantes :#strong['auto']; (par défaut), #strong['first'];, #strong['last'];.

 #strong['ComparisonMethod']; - Méthode de comparaison des éléments :#strong['auto']; (par défaut), #strong['real'];, #strong['abs'];.

 Avec 'MissingPlacement' défini à 'last', les valeurs présentes sont triées dans le sens demandé et les valeurs manquantes sont placées après elles. Cette règle s'applique avec une ou deux sorties. Une chaîne manquante est distincte d'une chaîne vide.

 Une valeur complexe est manquante si au moins une composante est NaN. Ces valeurs conservent leur ordre initial avec une ou deux sorties, y compris leur composante présente, pour chaque placement des valeurs manquantes et sens du tri.


== Fonction(s) utilisée(s)

qsort (stl)

== Bibliographie

Quick sort algorithm from Bentley and McIlroy's "Engineering a Sort Function". Software - Practice and Experience

== Exemples

ComparisonMethod

``````matlab
A = [10+20i 30+i 10i 0 -10i];
B = sort(A,'ComparisonMethod', 'auto')
B = sort(A, 'ComparisonMethod', 'real')
B = sort(A, 'ComparisonMethod', 'abs')

``````

MissingPlacement

``````matlab
A = [NaN 3 6 0 NaN];
[B, I] = sort(A, 'MissingPlacement', 'auto')
[B, I] = sort(A, 'MissingPlacement', 'first')
[B, I] = sort(A, 'MissingPlacement', 'last')

``````


== Voir aussi

#nlink(<data_analysis:issorted>)[issorted];, #nlink(<data_analysis:unique>)[unique];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
