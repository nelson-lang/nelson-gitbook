# kstest

Test de Kolmogorov-Smirnov a un echantillon

## 📝 Syntaxe

- h = kstest(x)
- h = kstest(x, 'CDF', cdf)
- h = kstest(x, 'CDF', cdfFunction)
- [h, p, ksstat, cv] = kstest(..., 'Alpha', alpha, 'Tail', tail)

## 📥 Argument d'entrée

- x - vecteur reel : donnees d'echantillon.
- cdf - matrice a deux colonnes definissant les valeurs x et les probabilites cumulees, function handle evalue aux valeurs triees, ou objet avec une methode cdf.
- cdfFunction - function handle retournant les probabilites cumulees pour chaque valeur d'entree.
- alpha - scalaire dans (0,1), 0.05 par defaut : niveau de signification.
- tail - 'unequal', 'larger' ou 'smaller'.

## 📤 Argument de sortie

- h - scalaire logique : decision du test.
- p - p-value.
- ksstat - statistique du test.
- cv - valeur critique.

## 📄 Description


<b>kstest</b> compare la distribution empirique de <b>x</b> avec la loi normale standard ou une distribution cumulee fournie. 

Les valeurs NaN sont ignorees avant le tri et le calcul de la distribution empirique.

## 💡 Exemple



```matlab
x = [-1.2 -0.4 0.1 0.3 0.8];
[h, p, ksstat, cv] = kstest(x);
cdf = [-2 0; -1 0.2; 0 0.5; 1 0.8; 2 1];
h2 = kstest(x, 'CDF', cdf);
h3 = kstest([0 1 2], 'CDF', @(z) 0.2 + 0.3 .* z);
```


## 🔗 Voir aussi

[normcdf](../../statistics/2_probability_distributions/normcdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
