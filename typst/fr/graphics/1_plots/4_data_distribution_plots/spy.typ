#import "../../nelson_help.typ": *

= spy <graphics:1_plots.4_data_distribution_plots.spy>

Visualiser le motif de parcimonie d'une matrice.

== Syntaxe

- #raw("spy(S)");
- #raw("spy(S, LineSpec)");
- #raw("spy(S, LineSpec, MarkerSize)");

== Argument d'entrée

/ S: matrice : creuse ou dense.
/ LineSpec: Style de ligne, marqueur et\/ou couleur : vecteur de caractères ou chaîne scalaire.
/ MarkerSize: Valeur entière scalaire positive.

== Description

#strong[spy(S)]; trace le motif de parcimonie de la matrice creuse #strong[S];.


== Exemples

``````matlab
f = figure();
rng('default');
S = sparse(round((rand(1, 10) + 1) * 100), round((rand(1, 10) + 1) * 100) , (rand(1, 10) + 1) * 10);
spy(S);
``````


#align(center)[#image("spy_1.svg")]
``````matlab
f = figure();
rng('default');
S = sparse(round((rand(1, 10) + 1) * 100), round((rand(1, 10) + 1) * 100) , (rand(1, 10) + 1) * 100);
spy(S, 45);
``````


#align(center)[#image("spy_2.svg")]
``````matlab
f = figure();
spy();
``````


#align(center)[#image("spy_3.svg")]

== Voir aussi

#nlink(<sparse:sparse>)[sparse];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
