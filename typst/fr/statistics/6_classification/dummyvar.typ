#import "../nelson_help.typ": *

= dummyvar <statistics:6_classification.dummyvar>

Cree des variables indicatrices depuis des variables de groupe.

== Syntaxe

- #raw("D = dummyvar(group)");

== Description

#strong[dummyvar]; cree une matrice numerique de colonnes indicatrices pour les variables de groupe dans #strong[group];.

 Chaque colonne de matrice numerique, vecteur categoriel, vecteur texte ou element de cellule dans #strong[group]; contribue un bloc de variables indicatrices. Les valeurs de groupe manquantes produisent des lignes #strong[NaN]; dans leur bloc.


== Exemple

``````matlab
Colors = categorical({'Red'; 'Blue'; 'Green'; 'Red'; 'Green'; 'Blue'});
D = dummyvar(Colors)
``````


== Voir aussi

#nlink(<statistics:6_classification.grp2idx>)[grp2idx];, #nlink(<statistics:4_anova.anova1>)[anova1];, #nlink(<statistics:9_design_of_experiments.x2fx>)[x2fx];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
