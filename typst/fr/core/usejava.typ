#import "nelson_help.typ": *

= usejava <core:usejava>

Teste la disponibilité d'une fonctionnalité Java.

== Syntaxe

- #raw("tf = usejava(feature)");

== Argument d'entrée

/ feature: l'une de #strong['awt'];, #strong['jvm']; ou #strong['swing'];.

== Argument de sortie

/ tf: un scalaire logique.

== Description

#strong[tf \= usejava(feature)]; indique si la fonctionnalité Java #strong[feature]; est disponible.

 Nelson n'embarque aucune machine virtuelle Java ; #strong[usejava]; renvoie donc toujours #strong[false];.


== Exemple

``````matlab
tf = usejava('jvm')
``````


== Voir aussi

#nlink(<core:version>)[version];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
