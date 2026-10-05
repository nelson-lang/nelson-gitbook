#import "../nelson_help.typ": *

= caxis <graphics:3_labels_styling.caxis>

Lit ou definit les limites de couleur des axes.

== Syntaxe

- #raw("limits = caxis()");
- #raw("caxis([cmin cmax])");
- #raw("mode = caxis('mode')");
- #raw("caxis('auto')");
- #raw("caxis('manual')");

== Argument d'entrée

/ limits: Vecteur numerique croissant a deux elements.

== Argument de sortie

/ limits: Limites de couleur courantes.

== Description

#strong[caxis]; fournit une interface de compatibilite pour les limites de couleur des axes.


== Exemple

``````matlab
imagesc([1 2; 3 4]); caxis([0 5]); limits = caxis()
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.clim>)[clim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
