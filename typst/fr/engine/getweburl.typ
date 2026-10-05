#import "nelson_help.typ": *

= getweburl <engine:getweburl>

Retourne l'URL et le port Web GUI courants.

== Syntaxe

- #raw("[url, port] = getweburl()");

== Argument de sortie

/ url: URL Web GUI courante, ou une chaine vide hors lancement web actif.
/ port: Port Web GUI courant, ou #strong[0]; hors lancement web actif.

== Description

#strong[getweburl()]; retourne l'URL HTTP et le port effectifs de la session Web GUI courante. Un lancement webview prive utilise toujours un port localhost interne, mais cette URL n'est pas affichee au demarrage.


== Exemple

``````matlab
[url, port] = getweburl()
``````


== Voir aussi

#nlink(<engine:getwebmode>)[getwebmode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
