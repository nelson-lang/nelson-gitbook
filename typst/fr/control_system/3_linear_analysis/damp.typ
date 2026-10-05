#import "../nelson_help.typ": *

= damp <control_system:3_linear_analysis.damp>

Fréquence naturelle et rapport d'amortissement.

== Syntaxe

- #raw("[wn, zeta] = damp(sys)");
- #raw("[wn, zeta, p, T] = damp(sys)");

== Argument d'entrée

/ sys: Modèle LTI.

== Argument de sortie

/ wn: Fréquence naturelle de chaque pôle : vecteur.
/ zeta: Rapport d'amortissement de chaque pôle : vecteur.
/ p: Pôles du modèle de système dynamique : vecteur.
/ T: Constante de temps (secondes) : vecteur.

== Description

La fonction #strong[damp(sys)]; fournit les fréquences naturelles (#strong[wn];) et les rapports d'amortissement (#strong[zeta];) associés aux pôles du système représenté par #strong[sys];.


== Exemple

``````matlab
sys = tf([2, 5, 1], [1, 0, 2, -6]);
[wn, zeta, p, T] = damp(sys)

``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.esort>)[esort];, #nlink(<control_system:1_dynamic_system_models.pole>)[pole];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
