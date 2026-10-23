#import "../nelson_help.typ": *

= bodeplot <control_system:3_linear_analysis.bodeplot>

Diagramme de Bode d'un système LTI SISO avec options de tracé.

== Syntaxe

- #raw("bodeplot(sys)");
- #raw("bodeplot(sys, opt)");
- #raw("bodeplot(sys, lineSpec)");
- #raw("bodeplot(sys, opt, lineSpec)");
- #raw("bodeplot(sys, w, ...)");
- #raw("[magnitude, phase, w] = bodeplot(...)");

== Argument d'entrée

/ sys: un modèle LTI SISO.
/ opt: une structure d'options renvoyée par bodeoptions.
/ lineSpec: Style de ligne, marqueur et couleur.
/ w: un cell {wmin, wmax} ou un vecteur de fréquences.

== Argument de sortie

/ magnitude: Amplitude : taille 1 x 1 x k (SISO).
/ phase: Phase : taille 1 x 1 x k (SISO).
/ w: Fréquences : un vecteur 1 x k.

== Description

#strong[bodeplot(sys)]; génère un diagramme de Bode du système LTI SISO #strong[sys];, comme #strong[bode];.

 #strong[bodeplot(sys, opt)]; applique les options de tracé décrites par #strong[opt]; (voir #strong[bodeoptions];).

 Lorsque #strong[opt.PhaseUnits]; vaut #strong['rad'];, la phase est tracée en radians. Lorsque #strong[opt.Grid]; vaut #strong['on'];, une grille est affichée.

 Un #strong[lineSpec]; et une spécification de fréquence #strong[w]; peuvent également être fournis, comme avec #strong[bode];.


== Exemple

``````matlab
G = tf([3], [1 1/2 4]);
opt = bodeoptions();
opt.PhaseUnits = 'rad';
opt.Grid = 'on';
f = figure();
bodeplot(G, opt, '--');

``````


#align(center)[#image("bodeplot_1.svg")]

== Voir aussi

#nlink(<control_system:3_linear_analysis.bode>)[bode];, #nlink(<control_system:3_linear_analysis.bodeoptions>)[bodeoptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
