#import "../nelson_help.typ": *

= silhouette <statistics:7_clustering_anomaly_detection.silhouette>

Valeurs silhouette pour des donnees groupees.

== Syntaxe

- #raw("s = silhouette(X, clust)");
- #raw("s = silhouette(X, clust, distance)");
- #raw("[s, h] = silhouette(...)");

== Description

#strong[silhouette]; calcule les valeurs silhouette a partir des distances deux a deux. Les handles graphiques sont retournes sous forme de tableau vide.


== Fonction(s) utilisée(s)

pdist2 kmeans kmedoids

== Exemples

Calculer les valeurs silhouette pour deux groupes compacts.

``````matlab
X = [0; 1; 10; 11];
clust = [1; 1; 2; 2];
s = silhouette(X, clust)
``````

Calculer les silhouettes apres une classification k-means.

``````matlab
X = [0 0; 0 1; 5 5; 5 6];
idx = kmeans(X, 2, 'Start', [0 0; 5 5]);
s = silhouette(X, idx, 'cityblock')
``````

