# gmdistribution

Distribution de melange gaussien.

## 📝 Syntaxe

- gm = gmdistribution(mu, Sigma)
- gm = gmdistribution(mu, Sigma, p)
- y = pdf(gm, X)
- P = posterior(gm, X)
- idx = cluster(gm, X)
- R = random(gm, n)

## 📄 Description


<b>gmdistribution</b> cree un objet de modele de melange gaussien a partir des moyennes, matrices de covariance et proportions optionnelles des composantes. 

L'objet prend en charge l'evaluation de densite avec <b>pdf</b>, les probabilites posterieures avec <b>posterior</b>, l'affectation par posteriori maximal avec <b>cluster</b> et l'echantillonnage aleatoire avec <b>random</b>.

## 💡 Exemple

Creer et evaluer un melange a deux composantes.

```matlab
gm = gmdistribution([0; 10], cat(3, 1, 4), [0.25 0.75]);
y = pdf(gm, [0; 10; 5])
P = posterior(gm, [0; 10; 5])
```


## 🔗 Voir aussi

[fitgmdist](../../statistics/7_clustering_anomaly_detection/fitgmdist.md), [kmeans](../../statistics/7_clustering_anomaly_detection/kmeans.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
