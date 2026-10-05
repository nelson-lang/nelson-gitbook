#import "nelson_help.typ": *

= getnelsonmode <engine:getnelsonmode>

Retourne le mode courant de Nelson.

== Syntaxe

- #raw("m = getnelsonmode()");

== Argument de sortie

/ m: une chaîne de caractères.

== Description

#strong[getnelsonmode()]; renvoie le mode courant utilisé par Nelson.

 Les modes possibles sont :

 #strong[BASIC\_ENGINE]; : Nelson utilisé comme moteur sans graphisme.

 #strong[ADVANCED\_ENGINE]; : Nelson utilisé comme moteur avec graphisme\/GUI.

 #strong[BASIC\_TERMINAL]; : Nelson lancé en terminal sans graphisme.

 #strong[ADVANCED\_TERMINAL]; : Nelson lancé en terminal avec graphisme\/GUI.

 #strong[GUI]; : Nelson lancé comme application graphique (par défaut).

 #strong[WEB\_GUI]; : Nelson lancé comme application web.


== Exemple

``````matlab
getnelsonmode()
``````


== Voir aussi

#nlink(<engine:executable>)[executable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
