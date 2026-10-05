#import "nelson_help.typ": *

= qml\_clearcomponentcache <qml_engine:qml_clearcomponentcache>

Vide le cache interne de composants du moteur.

== Syntaxe

- #raw("qml_clearcomponentcache");

== Description

Cette fonction provoque la destruction des métadonnées de propriété de tous les composants précédemment chargés par le moteur.

 Tous les composants précédemment chargés et les liaisons de propriété pour tous les objets existants créés à partir de ces composants cesseront de fonctionner.


== Exemple

``````matlab
qml_clearcomponentcache()
``````


== Voir aussi

#nlink(<qml_engine:qml_collectgarbage>)[qml\_collectgarbage];, #nlink(<qml_engine:qml_loadfile>)[qml\_loadfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
