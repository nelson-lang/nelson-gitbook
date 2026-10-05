#import "../../nelson_help.typ": *

= rticks <graphics:3_labels_styling.1_axes_appearance.rticks>

Definit ou retourne les graduations radiales des axes polaires.

== Syntaxe

- #raw("ticks = rticks()");
- #raw("rticks(values)");
- #raw("rticks('auto')");
- #raw("rticks('manual')");
- #raw("m = rticks('mode')");
- #raw("rticks(ax, ...)");

== Argument d'entrée

/ values: Vecteur numerique de valeurs de graduation radiale.
/ 'auto': Active la selection automatique des graduations et etiquettes radiales.
/ 'manual': Conserve les valeurs courantes de graduations radiales.
/ 'mode': Retourne le mode des graduations radiales.
/ ax: Axes polaire cible.

== Argument de sortie

/ ticks: Vecteur ligne numerique de valeurs de graduation radiale.
/ m: 'auto' ou 'manual'.

== Description

#strong[rticks]; retourne ou definit les valeurs des graduations radiales de l'axes polaire courant.

 La definition de valeurs numeriques passe le mode a #strong[manual];. Si les etiquettes radiales sont en mode automatique, elles sont regenerees depuis les nouvelles valeurs.


== Exemple

Definir les graduations radiales.

``````matlab

polarplot(linspace(0, 2*pi, 80), linspace(0, 4, 80));
rticks([0 1 2 3 4]);
ticks = rticks()

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.rticklabels>)[rticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticks>)[thetaticks];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
