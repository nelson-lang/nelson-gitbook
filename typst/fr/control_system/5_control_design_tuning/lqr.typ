#import "../nelson_help.typ": *

= lqr <control_system:5_control_design_tuning.lqr>

Conception d'un régulateur linéaire-quadratique (LQR).

== Syntaxe

- #raw("[K, S, P] = lqr(sys, Q, R, N)");
- #raw("[K, S, P] = lqr(A, B, Q, R, N)");

== Argument d'entrée

/ sys: Modèle LTI
/ Q: Matrice de pondération des états
/ R: Matrice de pondération des entrées
/ N: Matrice de terme croisé optionnelle : 0 par défaut.
/ A: Matrice d'état : matrice n x n.
/ B: Matrice d'entrée vers l'état : matrice n x m.

== Argument de sortie

/ K: Gain optimal : vecteur ligne.
/ S: Solution de l'équation de Riccati algébrique.
/ p: Pôles du système en boucle fermée : vecteur colonne.

== Description

La fonction calcule le gain K du régulateur LQ, la matrice S associée au coût et les valeurs propres du système en boucle fermée.


== Exemple

``````matlab
A = [-0.313 56.7 0; -0.0139 -0.426 0; 0 56.7 0];
B = [0.232; 0.0203; 0];
C = [0 0 1];
D = 1;
Ts = 1.2;
sys1 = ss(A, B, C, D, Ts);
sys2 = ss(A, B, C, D);

P = 2;
Q = P * C' * C;
R = 2;
[K1, S1, e1] = lqr(sys1, Q, R)
[K2, S2, e2] = lqr(sys2, Q, R)

``````


== Voir aussi

#nlink(<control_system:5_control_design_tuning.care>)[care];, #nlink(<control_system:5_control_design_tuning.dare>)[dare];, #nlink(<control_system:5_control_design_tuning.lqe>)[lqe];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
