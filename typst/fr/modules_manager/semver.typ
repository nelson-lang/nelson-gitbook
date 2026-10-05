#import "nelson_help.typ": *

= semver <modules_manager:semver>

gestionnaire de versions sémantiques.

== Syntaxe

- #raw("r = semver(version_str, version_range)");

== Argument d'entrée

/ version\_str: chaîne : version actuelle.
/ version\_range: chaîne : version à comparer ou plage de versions.

== Argument de sortie

/ r: nombre : -1, 0 ou 1.

== Description

#strong[semver]; compare une chaîne de version à une version simple ou à une plage de versions.

 Si une plage de versions est utilisée,#strong[r]; retourne 0 (non satisfaite) ou 1 (satisfaite).

 Si une version simple est utilisée, une valeur de comparaison#strong[r]; est renvoyée : -1 (inférieur), 0 (égal) ou 1 (supérieur).

 Opérateurs de plage supportés :

 #strong[\=]; - Égalité

 #strong[\>\=]; - Supérieur ou égal à

 #strong[\<\=]; - Inférieur ou égal à

 #strong[\<]; - Inférieur à

 #strong[\>]; - Supérieur à

 #strong[^]; - Opérateur caret (caret)

 #strong[\~]; - Opérateur tilde (tilde)


== Fonction(s) utilisée(s)

semver.c

== Bibliographie

https:\/\/semver.org\/

== Exemple

``````matlab

semver('1.5.10', '2.3.0')
semver('2.3.0', '1.5.10');
semver('1.5.10', '1.5.10')
semver('1.2.3', '~1.2.3')
semver('1.5.3', '~1.2.3')
semver('1.0.3', '~1')
semver('2.0.3', '~1')
semver('1.2.3-alpha', '>1.2.3-beta')
semver('1.2.3-alpha', '<1.2.3-beta')
semver('1.2.3', '^1.2.3')
semver('1.2.2', '^1.2.3')
semver('1.9.9', '^1.2.3')
semver('2.0.1', '^1.2.3')
``````


== Voir aussi

#nlink(<core:version>)[version];, #nlink(<modules_manager:getmodules>)[getmodules];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
