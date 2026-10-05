#import "../../nelson_help.typ": *

= pie <graphics:1_plots.6_discrete_data_plots.pie>

Ancien graphique en secteurs (camembert).

== Syntaxe

- #raw("pie(X)");
- #raw("pie(X, explode)");
- #raw("pie(X, labels)");
- #raw("pie(X, explode, labels)");
- #raw("pie(ax, ...)");
- #raw("p = pie(...)");

== Argument d'entrée

/ X: Vecteur ou matrice.
/ explode: Décalage des parts : vecteur ou matrice numérique, vecteur ou matrice logique, tableau de chaînes ou cellule de chaînes de caractères.
/ labels: '%.0f%%' (par défaut) ou tableau d'étiquettes de texte
/ ax: Objet axes.

== Argument de sortie

/ p: Vecteur d'objets patch et text.

== Description

#strong[pie(X)]; génère un graphique en secteurs (camembert) à partir des données du tableau#strong[X];.

 Si la somme des éléments de #strong[X]; est inférieure ou égale à 1, les valeurs de #strong[X]; représentent directement les aires proportionnelles des parts du camembert.

 Si la somme de #strong[X]; est inférieure à 1, le graphique affiche seulement une portion du camembert.

 Si la somme de #strong[X]; dépasse 1, la fonction normalise les valeurs en divisant chaque élément par la somme de #strong[X];.

 Cette normalisation garantit que le graphique reflète fidèlement les proportions relatives des données.

 Si#strong[X]; est une variable catégorielle, chaque part du camembert correspond à une catégorie, et l'aire de chaque part est déterminée par le rapport du nombre d'éléments de la catégorie sur le nombre total d'éléments de #strong[X];.


== Exemples

``````matlab
f = figure();
p = pie ([3, 2, 1], [0, 0, 1]);
``````


#align(center)[#image("pie_1.svg")]
``````matlab
f = figure();
p = pie([5 9 4 6 3],[0 1 0 1 0]);

``````


#align(center)[#image("pie_2.svg")]
``````matlab
f = figure();
p = pie([3 4 6 2],[0 1 0 0],["part1", "part2", "part3", "part4"]);

``````


#align(center)[#image("pie_3.svg")]
``````matlab
f = figure();
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
ax1 = subplot(1, 2, 1);
p1 = pie(ax1, y2010)
title('2010')
ax2 = subplot(1, 2, 2);
p2 = pie(ax2, y2011)
title('2011')

``````


#align(center)[#image("pie_4.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
