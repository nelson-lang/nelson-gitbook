#import "../nelson_help.typ": *

= sigma <control_system:3_linear_analysis.sigma>

Reponse en valeurs singulieres d'un modele LTI.

== Syntaxe

- #raw("sigma(sys)");
- #raw("sv = sigma(sys, w)");
- #raw("[sv, wout] = sigma(sys, w)");

== Argument d'entrée

/ sys: Modele LTI.
/ w: Vecteur de frequences en rad\/s.

== Argument de sortie

/ sv: Valeurs singulieres pour chaque frequence.
/ wout: Vecteur de frequences.

== Description

#strong[sigma]; calcule les valeurs singulieres de la reponse frequentielle.


== Exemple

``````matlab
sys = tf(2, [1 1]); [sv, w] = sigma(sys, [1 2 4])
``````


== Voir aussi

#nlink(<control_system:3_linear_analysis.freqresp>)[freqresp];, #nlink(<control_system:3_linear_analysis.bode>)[bode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
