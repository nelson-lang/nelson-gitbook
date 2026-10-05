#import "../nelson_help.typ": *

= nyquist <control_system:3_linear_analysis.nyquist>

Diagramme de Nyquist de la rÃ©ponse en frÃ©quence.

== Syntaxe

- #raw("nyquist(sys)");
- #raw("nyquist(sys, w)");
- #raw("[re, im, wout] = nyquist(sys)");
- #raw("[re, im, wout] = nyquist(sys, w)");

== Argument d'entrée

/ sys: SystÃ¨me dynamique
/ w: FrÃ©quences : vecteur ou {wmin,wmax}

== Argument de sortie

/ re: Partie rÃ©elle de la rÃ©ponse du systÃ¨me
/ im: Partie imaginaire de la rÃ©ponse du systÃ¨me
/ wout: FrÃ©quences

== Description

La fonction Nyquist,#strong[nyquist(sys)];, gÃ©nÃ¨re une reprÃ©sentation graphique connue sous le nom de tracÃ© de Nyquist, illustrant la rÃ©ponse en frÃ©quence d'un modÃ¨le de systÃ¨me dynamique reprÃ©sentÃ© par sys.

 Ce tracÃ© affiche les composantes rÃ©elle et imaginaire de la rÃ©ponse du systÃ¨me selon la frÃ©quence.

 Le contour de nyquist couvre les frÃ©quences positives et nÃ©gatives.

 Le tracÃ© inclut Ã©galement des flÃ¨ches indiquant le sens d'augmentation de la frÃ©quence pour chaque branche.


== Exemples

``````matlab
f = figure();
sys = tf([1, 1, 3, 3], [1, -3, 3, -1])
nyquist(sys);

``````


#align(center)[#image("nyquist_1.svg")]
``````matlab
H = tf([2 5 1], [1 2 3]);
[re, im, wout] = nyquist(H);

``````

``````matlab
f = figure();
      H = tf([2 5 1], [1 2 3]);
nyquist(H);

``````


#align(center)[#image("nyquist_2.svg")]

== Voir aussi

#nlink(<control_system:3_linear_analysis.bode>)[bode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
