#import "nelson_help.typ": *

= verLessThan <core:verLessThan>

Compare la version d'un produit à une chaîne de version.

== Syntaxe

- #raw("tf = verLessThan(toolboxName, versionString)");

== Argument d'entrée

/ toolboxName: une chaîne ou un tableau de caractères : nom du produit.
/ versionString: une chaîne de la forme #strong['major\[.minor\[.revision\]\]'];.

== Argument de sortie

/ tf: un logique : #strong[true]; si la version installée est inférieure à #strong[versionString];.

== Description

#strong[tf \= verLessThan(toolboxName, versionString)]; renvoie #strong[true]; si la version installée du produit nommé est inférieure à #strong[versionString];.

 Pour la compatibilité, interroger #strong['matlab']; renvoie une version récente afin que les tests de version hérités valent #strong[false];.


== Exemple

``````matlab
tf = verLessThan('nelson', '0.1')
``````


== Voir aussi

#nlink(<core:ver>)[ver];, #nlink(<core:isMATLABReleaseOlderThan>)[isMATLABReleaseOlderThan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
