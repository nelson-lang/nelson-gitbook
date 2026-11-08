#import "nelson_help.typ": *

= isMATLABReleaseOlderThan <core:isMATLABReleaseOlderThan>

Compare la version courante à une version MATLAB.

== Syntaxe

- #raw("tf = isMATLABReleaseOlderThan(release)");
- #raw("tf = isMATLABReleaseOlderThan(release, 'update', n)");

== Argument d'entrée

/ release: un nom de version de la forme #strong['RYYYYa']; ou #strong['RYYYYb'];, par exemple #strong['R2023b'];.
/ n: un entier positif ou nul : numéro de mise à jour.

== Argument de sortie

/ tf: un logique : #strong[true]; si la version courante est plus ancienne que celle demandée.

== Description

#strong[tf \= isMATLABReleaseOlderThan(release)]; compare la version courante à #strong[release];.

 Nelson émule une version récente ; les tests contre des versions plus anciennes valent donc #strong[false]; et le code de compatibilité emprunte son chemin actuel.


== Exemple

``````matlab
tf = isMATLABReleaseOlderThan('R2020b')
``````


== Voir aussi

#nlink(<core:verLessThan>)[verLessThan];, #nlink(<core:ver>)[ver];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
