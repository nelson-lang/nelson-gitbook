#import "../nelson_help.typ": *

= zpk <control_system:1_dynamic_system_models.zpk>

Construit un modèle zéros-pôles-gain.

== Syntaxe

- #raw("sys = zpk()");
- #raw("sys = zpk('s')");
- #raw("sys = zpk(z, p, k)");
- #raw("sys = zpk(z, p, k, Ts)");
- #raw("sys = zpk(sysIn)");

== Argument d'entrée

/ z: zéros : un vecteur (ou un tableau de cellules de vecteurs).
/ p: pôles : un vecteur (ou un tableau de cellules de vecteurs).
/ k: gain scalaire.
/ Ts: Temps d'échantillonnage Ts, par défaut : en secondes
/ sysIn: modèle LTI.

== Argument de sortie

/ sys: Modèle zéros-pôles-gain de sortie.

== Description

#strong[sys \= zpk(z, p, k)]; crée un modèle zéros-pôles-gain en temps continu.

 Le modèle représente la fonction de transfert #strong[k \* (s - z(1))...(s - z(end)) \/ ((s - p(1))...(s - p(end)))]; où #strong[z]; sont les zéros, #strong[p]; les pôles et #strong[k]; le gain scalaire.

 Lorsque vous incluez le paramètre #strong[Ts];, il permet de créer un modèle zéros-pôles-gain en temps discret.

 #strong[sys \= zpk(sysIn)]; convertit le modèle LTI #strong[sysIn]; (#strong[tf]; ou #strong[ss];) en un modèle zéros-pôles-gain.

 Les zéros et pôles complexes d'un système réel doivent être fournis par paires conjuguées. Le modèle est affiché sous forme factorisée.


== Exemples

``````matlab
z = -1;
p = [-2 -3];
k = 5;
sys = zpk(z, p, k)
``````

``````matlab
sys = zpk(-1, [-2 -3], 5);
G = tf(sys)
``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
