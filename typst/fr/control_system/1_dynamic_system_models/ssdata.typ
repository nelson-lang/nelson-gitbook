#import "../nelson_help.typ": *

= ssdata <control_system:1_dynamic_system_models.ssdata>

Accède aux données d'un modèle en espace d'état.

== Syntaxe

- #raw("[A, B, C, D] = ssdata(sys)");
- #raw("[A, B, C, D, Ts] = ssdata(sys)");

== Argument d'entrée

/ sys: LTI model.

== Argument de sortie

/ A: Matrice d'état : matrice Nx par Nx.
/ B: Matrice d'entrée vers l'état : matrice Nx par Nu.
/ C: Matrice d'état vers sortie : matrice Ny par Nx.
/ D: Matrice de passage direct : matrice Ny par Nu.
/ TS: Temps d'échantillonnage : scalaire.

== Description

La fonction #strong[ssdata(sys)]; récupère les matrices #strong[A];, #strong[B];, #strong[C];, #strong[D]; du modèle d'état (tableau LTI) représenté par #strong[sys];.

 Si #strong[sys]; est initialement sous la forme d'une fonction de transfert ou d'un modèle zéro-pôle-gain (tableau LTI), il est automatiquement converti en représentation d'état avant l'extraction des données matricielles.


== Exemple

``````matlab
sysIn = ss([1 0;0 -2], [-1;0], [2 1], 0, 3.2);
[a, b, c, d, Ts] = ssdata(sysIn)
``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
