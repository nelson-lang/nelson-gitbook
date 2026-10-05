#import "../../nelson_help.typ": *

= polaraxes <graphics:1_plots.2_polar_plots.polaraxes>

Cree des axes configures pour les traces polaires.

== Syntaxe

- #raw("polaraxes()");
- #raw("polaraxes(propertyName, propertyValue, ...)");
- #raw("ax = polaraxes(...)");

== Argument d'entrée

/ propertyName: Nom de propriete d'axes : chaine scalaire ou vecteur ligne de caracteres.
/ propertyValue: Valeur affectee a la propriete d'axes precedente.

== Argument de sortie

/ ax: Objet graphique axes initialise pour les traces polaires.

== Description

#strong[polaraxes]; cree un objet axes et l'initialise pour le rendu en coordonnees polaires.

 L'etat polaire est stocke sur l'axes et contient les limites radiales, les limites angulaires, les graduations, les etiquettes, les handles de grille et les handles de donnees tracees.

 L'objet reste un objet graphique axes. Utiliser #strong[polarplot]; pour ajouter des donnees polaires, puis #strong[rlim];, #strong[rticks];, #strong[rticklabels];, #strong[thetalim];, #strong[thetaticks]; et #strong[thetaticklabels]; pour personnaliser les decorations polaires.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.polaraxes.properties>)[proprietes de polaraxes]; pour la liste complete des proprietes.


== Exemple

Creer un axes polaire et tracer dedans.

``````matlab

ax = polaraxes();
theta = linspace(0, 2*pi, 80);
polarplot(ax, theta, 1 + sin(theta));
rlim(ax, [0 2]);

``````


#align(center)[#image("polaraxes_1.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.polaraxes.properties>)[proprietes de polaraxes];, #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
