#import "../nelson_help.typ": *

= pzmap <control_system:3_linear_analysis.pzmap>

Carte des pôles et des zéros d'un système dynamique.

== Syntaxe

- #raw("pzmap(sys)");
- #raw("[p, z] = pzmap(sys)");

== Argument d'entrée

/ sys: Système dynamique : un modèle LTI SISO.

== Argument de sortie

/ p: Pôles du système.
/ z: Zéros du système.

== Description

#strong[pzmap(sys)]; trace les pôles et les zéros du modèle de système dynamique #strong[sys]; dans le plan complexe.

 Chaque pôle est marqué d'un #strong[x]; et chaque zéro d'un #strong[o];.

 Lorsque des arguments de sortie sont demandés, #strong[\[p, z\] \= pzmap(sys)]; renvoie les pôles #strong[p]; et les zéros #strong[z]; sans produire de tracé.


== Exemples

``````matlab
f = figure();
sys = tf([1 2], [1 3 2]);
pzmap(sys);

``````


#align(center)[#image("pzmap_1.svg")]
``````matlab
sys = tf([1 2], [1 3 2]);
[p, z] = pzmap(sys)

``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.pole>)[pole];, #nlink(<control_system:1_dynamic_system_models.zero>)[zero];, #nlink(<control_system:3_linear_analysis.bode>)[bode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
