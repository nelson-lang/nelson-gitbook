#import "nelson_help.typ": *

= copygraphics <graphics_io:copygraphics>

Copie un tracé vers le presse-papiers.

== Syntaxe

- #raw("copygraphics(fig)");

== Argument d'entrée

/ fig: objet figure.

== Description

#strong[copygraphics]; copie la figure dans le presse-papiers.

 Sur le bureau, l'image RGBA rendue est envoyée au presse-papiers natif par l'adaptateur de bureau optionnel. En mode web, le même rendu est encodé en PNG RGBA puis transmis par #strong[clipboard.image]; au navigateur. Cet accès exige un contexte sécurisé et peut demander une permission ou un geste utilisateur. Si la demande automatique est refusée, une action visible #strong[Copy image]; permet de recommencer l'opération.


== Exemple

``````matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
copygraphics(gcf());

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics_io:saveas>)[saveas];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [ajout du presse-papiers d'images dans le navigateur],
)

// Auteur: Allan CORNET
