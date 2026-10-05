#import "../nelson_help.typ": *

= gmdistribution <statistics:7_clustering_anomaly_detection.gmdistribution>

Distribution de melange gaussien.

== Syntaxe

- #raw("gm = gmdistribution(mu, Sigma)");
- #raw("gm = gmdistribution(mu, Sigma, p)");
- #raw("y = pdf(gm, X)");
- #raw("P = posterior(gm, X)");
- #raw("idx = cluster(gm, X)");
- #raw("R = random(gm, n)");

== Description

#strong[gmdistribution]; cree un objet de modele de melange gaussien a partir des moyennes, matrices de covariance et proportions optionnelles des composantes.

 L'objet prend en charge l'evaluation de densite avec #strong[pdf];, les probabilites posterieures avec #strong[posterior];, l'affectation par posteriori maximal avec #strong[cluster]; et l'echantillonnage aleatoire avec #strong[random];.


== Exemple

Creer et evaluer un melange a deux composantes.

``````matlab
gm = gmdistribution([0; 10], cat(3, 1, 4), [0.25 0.75]);
y = pdf(gm, [0; 10; 5])
P = posterior(gm, [0; 10; 5])
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.fitgmdist>)[fitgmdist];, #nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
