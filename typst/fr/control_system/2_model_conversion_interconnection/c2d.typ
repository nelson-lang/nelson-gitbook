#import "../nelson_help.typ": *

= c2d <control_system:2_model_conversion_interconnection.c2d>

Convertit le modèle du temps continu au temps discret.

== Syntaxe

- #raw("[P, G] = c2d(A, B, Ts)");
- #raw("sysd = c2d(sysc, Ts)");
- #raw("sysd = c2d(sysc, Ts, method)");
- #raw("sysd = c2d(sysc, Ts, 'prewarp', w0)");

== Argument d'entrée

/ A: Matrice d'état : matrice Nx-par-Nx.
/ B: Matrice entrée-état : matrice Nx-par-Nu.
/ Ts: Temps d'échantillonnage : scalaire positif.
/ sysc: Système dynamique en temps continu : modèle LTI.
/ method: Méthode de discrétisation : 'zoh', 'tustin', 'prewarp'
/ w0: fréquence de pré-distorsion.

== Argument de sortie

/ P: Matrice de transition d'état (phi)
/ G: gamma (matrice de commande discrète)
/ sysd: Modèle en temps discret

== Description

La fonction #strong[sysd \= c2d(sysc, Ts)]; discrétise le modèle dynamique en temps continu #strong[sysc]; en utilisant un maintien d'ordre zéro sur les entrées avec un temps d'échantillonnage de #strong[Ts];.

 Par exemple, vous pouvez utiliser #strong[sysd \= c2d(sysc, Ts, method)]; pour spécifier explicitement la méthode de discrétisation.


== Exemple

``````matlab
A = [1  0.5; 0.5  1 ];
B = [0 -1; 1  0 ];
C = [ -1  0; 0  1 ];
D = [  1  0; 0 -1 ];
sys = ss(A, B, C, D);
Ts = 2;
sysd = c2d(sys, Ts, 'zoh')

``````


== Voir aussi

#nlink(<control_system:2_model_conversion_interconnection.d2c>)[d2c];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
