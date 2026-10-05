# vartest2

Test F pour egalite des variances

## 📝 Syntaxe

- h = vartest2(x, y)
- h = vartest2(x, y, 'Alpha', alpha)
- h = vartest2(x, y, 'Tail', tail)
- h = vartest2(x, y, 'Dim', dim)
- [h, p, ci, stats] = vartest2(...)

## 📥 Argument d'entrée

- x - tableau numerique reel : premier echantillon.
- y - tableau numerique reel : second echantillon.
- alpha - scalaire dans (0,1), 0.05 par defaut : niveau de signification.
- tail - 'both', 'right' ou 'left'.
- dim - entier positif : dimension de calcul.

## 📤 Argument de sortie

- h - tableau logique : decision du test.
- p - tableau : p-values.
- ci - tableau a 2 lignes : intervalles de confiance du rapport de variances.
- stats - structure avec les champs fstat, df1 et df2.

## 📄 Description


<b>vartest2</b> effectue un test F comparant deux variances d'echantillons le long de la premiere dimension non singleton sauf si <b>Dim</b> est specifie. 

Les valeurs NaN sont ignorees independamment dans chaque echantillon teste.

## 💡 Exemple



```matlab
x = [4.5 4.8 5.1 5.4 5.7 6.0];
y = [3.9 4.1 4.2 4.4 4.5];
[h, p, ci, stats] = vartest2(x, y);
```


## 🔗 Voir aussi

[vartest](../../statistics/3_hypothesis_tests/vartest.md), [var](../../statistics/1_descriptive_statistics_visualization/var.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
