#import "../nelson_help.typ": *

= rlocus <control_system:3_linear_analysis.rlocus>

Lieu des racines d'un modèle SISO.

== Syntaxe

- #raw("rlocus(sys)");
- #raw("rlocus(sys, k)");
- #raw("rlocus(sys1, sys2, ...)");
- #raw("[r, k] = rlocus(sys)");
- #raw("[r, k] = rlocus(sys, k)");

== Argument d'entrée

/ sys: Système dynamique SISO
/ k: Vecteur des gains de contre-réaction

== Argument de sortie

/ r: Positions complexes des pôles en boucle fermée, une colonne par gain
/ k: Vecteur des gains utilisés

== Description

La fonction du lieu des racines, #strong[rlocus(sys)];, calcule et trace le lieu des pôles en boucle fermée de la boucle #strong[feedback(k\*sys, 1)];, c'est-à-dire les racines de #strong[den + k\*num];, lorsque le gain #strong[k]; varie de 0 à l'infini.

 Chaque branche part d'un pôle en boucle ouverte (marqué #strong[x];) pour #strong[k \= 0]; et se termine sur un zéro fini en boucle ouverte (marqué #strong[o];) ou tend vers l'infini lorsque #strong[k]; augmente.

 Lorsqu'un vecteur de gains #strong[k]; est fourni, ces gains sont utilisés à la place de la plage sélectionnée automatiquement.

 Avec des arguments de sortie, #strong[\[r, k\] \= rlocus(sys)]; renvoie les positions des pôles en boucle fermée et les gains sans tracer.


== Exemples

``````matlab
f = figure();
sys = tf([1 3], [1 3 2]);
rlocus(sys);

``````


#align(center)[#image("rlocus_1.svg")]
``````matlab
G = tf(1, [1 3 2]);
[r, k] = rlocus(G);

``````


== Voir aussi

#nlink(<control_system:3_linear_analysis.nyquist>)[nyquist];, #nlink(<control_system:3_linear_analysis.bode>)[bode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
