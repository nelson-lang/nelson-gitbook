#import "../nelson_help.typ": *

= initial <control_system:4_time_frequency_response.initial>

Conditions initiales et configurations de simulation.

== Syntaxe

- #raw("[y, t, x] = initial(sys, x0)");
- #raw("[y, t, x] = initial(sys, x0, Tfinal)");
- #raw("[y, t, x] = initial(sys, x0, t)");
- #raw("[y, t, x] = initial(sys, x0, [t0, tFinal])");
- #raw("initial(...)");

== Argument d'entrée

/ sys: un modÃ¨le lti.
/ x0: Valeurs initiales de l'Ã©tat : vecteur.
/ t: Ã‰chantillons de temps : vecteur.
/ tFinal: Temps de fin pour la rÃ©ponse Ã  l'Ã©tape : scalaire.
/ \[t0, tFinal\]: Plage de temps pour la rÃ©ponse Ã  l'Ã©tape : vecteur Ã  deux Ã©lÃ©ments.

== Argument de sortie

/ y: DonnÃ©es de rÃ©ponse simulÃ©es : matrice ou vecteur.
/ tOut: Vecteur temps : vecteur.
/ x: Trajectoires d'Ã©tat : matrice ou vecteur.

== Description

#strong[\[y, tOut\] \= initial(sys, x0)]; calcule la rÃ©ponse initiale non forcÃ©e (y) du systÃ¨me dynamique #strong[sys]; Ã  partir de l'Ã©tat initial spÃ©cifiÃ© #strong[x0];.

 Le vecteur temps #strong[tOut]; est fourni dans les unitÃ©s de temps de #strong[sys];, et la fonction initial s'adapte automatiquement les pas de temps et la durÃ©e de la simulation en fonction de la dynamique du systÃ¨me.

 Lorsque vous utilisez #strong[\[y, tOut\] \= initial(sys, x0, tFinal)];, la fonction simule la rÃ©ponse de t \= 0 Ã  l'heure finale t \= tFinal.

 De mÃªme, #strong[\[y, tOut\] \= initial(sys, x0, \[t0, tFinal\])]; simule la rÃ©ponse de t0 Ã  tFinal.

 De plus, #strong[\[y, tOut\] \= initial(sys, x0, t)]; renvoie la rÃ©ponse initiale de #strong[sys]; aux moments spÃ©cifiÃ©s dans le vecteur #strong[t];.


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
initial(sys, X0);

``````


#align(center)[#image("initial.svg")]

== Voir aussi

#nlink(<control_system:4_time_frequency_response.step>)[step];, #nlink(<control_system:4_time_frequency_response.lsim>)[lsim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
