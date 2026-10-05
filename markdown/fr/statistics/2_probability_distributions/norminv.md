# norminv

Inverse de la fonction de repartition normale

## 📝 Syntaxe

- x = norminv(p)
- x = norminv(p, mu, sigma)
- [x, xLo, xUp] = norminv(p, mu, sigma, pCov)
- [x, xLo, xUp] = norminv(p, mu, sigma, pCov, alpha)

## 📥 Argument d'entrée

- p - scalaire reel ou tableau : probabilites.
- mu - scalaire reel ou tableau, 0 par defaut : moyenne.
- sigma - scalaire reel positif ou tableau, 1 par defaut : ecart-type.
- pCov - matrice de covariance 2-par-2 pour les parametres estimes.
- alpha - scalaire dans (0,1), 0.05 par defaut : niveau de signification.

## 📤 Argument de sortie

- x - scalaire ou tableau : quantiles.
- xLo - borne inferieure de confiance.
- xUp - borne superieure de confiance.

## 📄 Description


<b>norminv</b> evalue les quantiles de la loi normale. 

Les probabilites hors de [0,1] retournent NaN. Les probabilites 0 et 1 retournent les bornes infinies.

## 💡 Exemple



```matlab
p = [0.025 0.5 0.975];
x = norminv(p);
[x, xLo, xUp] = norminv(0.5, 0, 1, [0.04 0; 0 0.01]);
```


## 🔗 Voir aussi

[normcdf](../../statistics/2_probability_distributions/normcdf.md), [normrnd](../../statistics/2_probability_distributions/normrnd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
