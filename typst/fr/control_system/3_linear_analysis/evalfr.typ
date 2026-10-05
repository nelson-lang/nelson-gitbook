#import "../nelson_help.typ": *

= evalfr <control_system:3_linear_analysis.evalfr>

Évalue la réponse en fréquence à une fréquence donnée.

== Syntaxe

- #raw("frsp = evalfr(sys, f)");

== Argument d'entrée

/ sys: Modèle LTI
/ f: fréquence unique

== Argument de sortie

/ frsp: réponse en fréquence

== Description

La fonction #strong[evalfr(sys, f)]; calcule la valeur de la fonction de transfert pour un modèle de système donné représenté par #strong[sys]; au nombre complexe #strong[f];.


== Exemple

``````matlab
numerator = {[2, 0], [1, 3]};
denominator = {[4, 0, 3, -1], [1 , 3, 5]};
sys = tf(numerator, denominator);
z = 1 + j;
frsp = evalfr(sys, z)
``````


== Voir aussi

#nlink(<control_system:3_linear_analysis.bode>)[bode];, #nlink(<control_system:3_linear_analysis.freqresp>)[freqresp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
