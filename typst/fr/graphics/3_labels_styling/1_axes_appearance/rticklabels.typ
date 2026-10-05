#import "../../nelson_help.typ": *

= rticklabels <graphics:3_labels_styling.1_axes_appearance.rticklabels>

Definit ou retourne les etiquettes radiales des axes polaires.

== Syntaxe

- #raw("labels = rticklabels()");
- #raw("rticklabels(labels)");
- #raw("rticklabels('auto')");
- #raw("rticklabels('manual')");
- #raw("m = rticklabels('mode')");
- #raw("rticklabels(ax, ...)");

== Argument d'entrée

/ labels: Tableau de cellules, tableau de chaines, vecteur de caracteres ou valeurs numeriques converties en etiquettes.
/ 'auto': Genere les etiquettes radiales depuis les valeurs de graduation radiale.
/ 'manual': Conserve les etiquettes radiales courantes.
/ 'mode': Retourne le mode des etiquettes radiales.
/ ax: Axes polaire cible.

== Argument de sortie

/ labels: Tableau de cellules d'etiquettes radiales.
/ m: 'auto' ou 'manual'.

== Description

#strong[rticklabels]; retourne ou definit les etiquettes affichees a cote des graduations radiales.

 La definition d'etiquettes passe le mode a #strong[manual];. Le nombre d'etiquettes affichees est aligne sur le nombre de graduations radiales visibles.


== Exemple

Definir les etiquettes radiales.

``````matlab

polarplot(linspace(0, 2*pi, 80), linspace(0, 3, 80));
rticks([0 1.5 3]);
rticklabels({'zero'; 'middle'; 'maximum'});
labels = rticklabels()

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticklabels>)[thetaticklabels];, #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
