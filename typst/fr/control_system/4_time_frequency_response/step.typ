#import "../nelson_help.typ": *

= step <control_system:4_time_frequency_response.step>

RÃ©ponse indicielle d'un systÃ¨me dynamique.

== Syntaxe

- #raw("[y, t, x] = step(sys)");
- #raw("[y, t, x] = step(sys, t)");
- #raw("[y, t, x] = step(sys, tFinal)");
- #raw("[y, t, x] = step(sys, [t0, tFinal])");

== Argument d'entrée

/ sys: un modÃ¨le lti.
/ t: Vecteur temps.
/ tFinal: Temps final pour la rÃ©ponse indicielle : scalaire.
/ \[t0, tFinal\]: Plage de temps pour la rÃ©ponse indicielle : vecteur Ã  deux Ã©lÃ©ments.

== Argument de sortie

/ y: DonnÃ©es de rÃ©ponse simulÃ©es : matrice ou vecteur.
/ t: Vecteur temps : vecteur.
/ x: Trajectoires d'Ã©tat : matrice ou vecteur.

== Description

La fonction calcule et trace la rÃ©ponse indicielle du systÃ¨me dynamique pour les conditions et l'intervalle de temps fournis.


== Exemple

``````matlab
A = [-10 -20 -30;1  0  0; 0  1  0];
B = [1;   0;   0];
C = [0   0   1];
D = 0;
T = [0:0.1:1];
U = zeros(size(T, 1), size(T, 2));
X0 = [0.1 0.1 0.1];
sys = ss(A, B, C, D);
step(sys);

``````


#align(center)[#image("step.svg")]

== Voir aussi

#nlink(<control_system:2_model_conversion_interconnection.gensign>)[gensig];, #nlink(<control_system:4_time_frequency_response.lsim>)[lsim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
