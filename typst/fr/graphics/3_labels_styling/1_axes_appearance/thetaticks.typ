#import "../../nelson_help.typ": *

= thetaticks <graphics:3_labels_styling.1_axes_appearance.thetaticks>

Definit ou retourne les graduations angulaires des axes polaires.

== Syntaxe

- #raw("ticks = thetaticks()");
- #raw("thetaticks(values)");
- #raw("thetaticks('auto')");
- #raw("thetaticks('manual')");
- #raw("m = thetaticks('mode')");
- #raw("thetaticks(ax, ...)");

== Argument d'entrée

/ values: Vecteur numerique de valeurs de graduation angulaire en degres.
/ 'auto': Active la selection automatique des graduations et etiquettes angulaires.
/ 'manual': Conserve les valeurs courantes de graduations angulaires.
/ 'mode': Retourne le mode des graduations angulaires.
/ ax: Axes polaire cible.

== Argument de sortie

/ ticks: Vecteur ligne numerique de valeurs de graduation angulaire en degres.
/ m: 'auto' ou 'manual'.

== Description

#strong[thetaticks]; retourne ou definit les valeurs des graduations angulaires de l'axes polaire courant. Les valeurs sont exprimees en degres.

 La definition de valeurs numeriques passe le mode a #strong[manual];. Si les etiquettes angulaires sont en mode automatique, elles sont regenerees depuis les nouvelles valeurs.


== Exemple

Definir les graduations angulaires.

``````matlab

polarplot(linspace(0, 2*pi, 80), ones(1, 80));
thetaticks(0:45:360);
ticks = thetaticks()

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticklabels>)[thetaticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
