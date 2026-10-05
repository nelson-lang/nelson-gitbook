#import "../nelson_help.typ": *

= balreal <control_system:1_dynamic_system_models.balreal>

Équilibrage basé sur le Gramien des réalisations d'espace d'état.

== Syntaxe

- #raw("[sysb, g] = balreal(sys)");
- #raw("[sysb, g, T, Ti] = balreal(sys)");

== Argument d'entrée

/ sys: Modèle LTI.

== Argument de sortie

/ sysb: Modèle LTI.
/ g: Vecteur diagonal de la matrice de Gramien équilibrée.
/ T: Matrice de transformation de similarité d'état.
/ Ti: Matrice inverse de la transformation de similarité d'état.

== Description

#strong[balreal(sys)]; calcule une réalisation équilibrée, notée #strong[sysb];, pour la partie stable du modèle linéaire invariant dans le temps (LTI) #strong[sys];.

 Ce processus s'applique aussi bien aux systèmes continus que discrets. Si #strong[sys]; n'est pas initialement sous forme d'espace d'état, la fonction le convertit automatiquement en espace d'état à l'aide de #strong[ss]; avant de procéder à l'équilibrage.


== Exemple

``````matlab
sys = ss([-1, 0; 0.1, -3], [1, 0]', [0, 1], 0);
[sysb, g, T, Ti] = balreal(sys)

``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.gram>)[gram];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
