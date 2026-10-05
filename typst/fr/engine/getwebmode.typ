#import "nelson_help.typ": *

= getwebmode <engine:getwebmode>

Renvoie le mode de lancement effectif de Nelson WebView.

== Syntaxe

- #raw("mode = getwebmode()");

== Argument de sortie

/ mode: #strong['webview'];, #strong['server']; ou #strong['none'];.

== Description

#strong[getwebmode()]; indique comment le bureau Nelson WebView courant a effectivement ete lance. La fonction renvoie #strong['none']; en dehors d'un lancement web actif.


== Exemple

``````matlab
getwebmode()
``````


== Voir aussi

#nlink(<engine:getnelsonmode>)[getnelsonmode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
