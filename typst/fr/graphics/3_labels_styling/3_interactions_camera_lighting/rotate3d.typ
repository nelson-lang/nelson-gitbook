#import "../../nelson_help.typ": *

= rotate3d <graphics:3_labels_styling.3_interactions_camera_lighting.rotate3d>

Activer le mode rotation.

== Syntaxe

- #raw("rotate3d");
- #raw("rotate3d option");
- #raw("rotate3d(fig, ...)");
- #raw("rotate3d(ax, ...)");

== Argument d'entrée

/ option: Chaîne de caractères : 'on', 'off' ou 'toggle'.
/ fig: Objet figure : figure cible
/ ax: Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.

== Description

Utilisez le mode rotation pour faire pivoter de façon interactive la vue 3D des axes lors de l'exploration des données. Activez ou désactivez le mode rotation et configurez des options de base supplémentaires avec la fonction rotate3d.

 #strong[rotate3d option]; établit le mode rotation pour tous les axes de la figure courante. Par exemple, rotate3d on active le mode rotation, tandis que rotate3d off le désactive.

 

 Lorsque le mode rotation est activé, vous pouvez ajuster la vue des axes avec le curseur ou le clavier :

 

 Curseur : cliquez et faites glisser dans les axes.

 Clavier : utilisez les flèches droite (-\>) ou gauche (←) pour ajuster l'azimut, et les flèches haut (↑) ou bas (↓) pour modifier l'élévation.


== Exemple

``````matlab
surf(peaks)
rotate3d
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.pan>)[pan];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.2.0], [version initiale],
)

// Auteur: Allan CORNET
