#import "../../nelson_help.typ": *

= yticklabels <graphics:3_labels_styling.1_axes_appearance.yticklabels>

Definir ou interroger les etiquettes des graduations de l'axe y.

== Syntaxe

- #raw("yticklabels(labels)");
- #raw("yticklabels('auto')");
- #raw("yticklabels('manual')");
- #raw("mode = yticklabels('mode')");
- #raw("labels = yticklabels");
- #raw("yticklabels(ax, ...)");
- #raw("labels = yticklabels(ax)");

== Argument d'entrée

/ labels: tableau de chaines, cellule de vecteurs de caracteres, ou vecteur de caracteres utilise comme etiquettes de graduations de l'axe y.
/ ax: objet axes cible. S'il est omis, les axes courants sont utilises.

== Argument de sortie

/ labels: etiquettes courantes des graduations de l'axe y.
/ mode: mode courant des etiquettes de l'axe y : 'auto' ou 'manual'.

== Description

#strong[yticklabels]; definit ou interroge la propriete #strong[YTickLabel]; des axes.

 Affecter des etiquettes passe #strong[YTickLabelMode]; a #strong[manual];. Utiliser #strong[yticklabels('auto')]; pour revenir aux etiquettes automatiques.


== Exemples

Definir les etiquettes de l'axe y pour un diagramme en barres horizontales.

``````matlab
f = figure();
barh([10 20 30 41]);
yticklabels({'April', 'May', 'June', 'July'});

``````


#align(center)[#image("yticklabels_1.svg")]
Definir des etiquettes sur des axes specifies et interroger le mode.

``````matlab
f = figure();
ax = axes('Parent', f);
plot(ax, 1:4, [2 4 3 5]);
ax.YTick = 2:5;
yticklabels(ax, ["low"; "mid"; "high"; "top"]);
mode = yticklabels(ax, 'mode')

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:1_plots.6_discrete_data_plots.barh>)[barh];.

// Auteur: Allan CORNET
