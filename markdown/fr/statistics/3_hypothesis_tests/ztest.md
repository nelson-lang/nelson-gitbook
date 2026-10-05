# ztest

Test z pour une moyenne avec ecart type connu

## 📝 Syntaxe

- h = ztest(x, m, sigma)
- h = ztest(x, m, sigma, 'Alpha', alpha)
- h = ztest(x, m, sigma, 'Tail', tail)
- h = ztest(x, m, sigma, 'Dim', dim)
- [h, p, ci, zval] = ztest(...)

## 📥 Argument d'entrée

- x - tableau numerique reel : donnees d'echantillon.
- m - scalaire reel : moyenne supposee.
- sigma - scalaire reel positif : ecart type connu.
- alpha - scalaire dans (0,1), 0.05 par defaut : niveau de signification.
- tail - 'both', 'right' ou 'left'.
- dim - entier positif : dimension de calcul.

## 📤 Argument de sortie

- h - tableau logique : decision du test.
- p - tableau : p-values.
- ci - tableau a 2 lignes : intervalles de confiance de la moyenne.
- zval - tableau : statistiques z.

## 📄 Description


<b>ztest</b> effectue un test z le long de la premiere dimension non singleton sauf si <b>Dim</b> est specifie. 

Les valeurs NaN sont ignorees dans chaque tranche testee.

## 💡 Exemple



```matlab
x = [72 75 77 70 74 76];
[h, p, ci, zval] = ztest(x, 75, 10);
[h2, p2] = ztest(x, 72, 10, 'Tail', 'right');
```


## 🔗 Voir aussi

[ttest](../../statistics/3_hypothesis_tests/ttest.md), [normcdf](../../statistics/2_probability_distributions/normcdf.md), [norminv](../../statistics/2_probability_distributions/norminv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
