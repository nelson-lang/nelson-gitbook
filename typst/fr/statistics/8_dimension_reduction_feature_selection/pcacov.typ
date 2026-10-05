#import "../nelson_help.typ": *

= pcacov <statistics:8_dimension_reduction_feature_selection.pcacov>

Analyse en composantes principales sur une matrice de covariance.

== Syntaxe

- #raw("coeff = pcacov(V)");
- #raw("[coeff, latent] = pcacov(V)");
- #raw("[coeff, latent, explained] = pcacov(V)");

== Description

#strong[pcacov]; effectue une analyse en composantes principales sur une matrice de covariance carree.

 Les coefficients sont retournes en colonnes, ordonnees par variance decroissante. Le vecteur latent contient les valeurs propres de V, et explained contient le pourcentage de variance totale represente par chaque composante.


== Exemple

``````matlab
V = [4 2; 2 3];
[coeff, latent, explained] = pcacov(V)
``````


== Voir aussi

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
