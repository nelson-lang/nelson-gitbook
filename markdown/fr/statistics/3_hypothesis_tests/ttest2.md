# ttest2

Test t a deux echantillons

## 📝 Syntaxe

- h = ttest2(x, y)
- h = ttest2(x, y, 'Alpha', alpha)
- h = ttest2(x, y, 'Tail', tail)
- h = ttest2(x, y, 'Vartype', vartype)
- h = ttest2(x, y, 'Dim', dim)
- [h, p, ci, stats] = ttest2(...)

## 📥 Argument d'entrée

- x - tableau numerique reel : premier echantillon.
- y - tableau numerique reel : second echantillon.
- alpha - scalaire dans (0,1), 0.05 par defaut : niveau de signification.
- tail - 'both', 'right' ou 'left'.
- vartype - 'equal' par defaut ou 'unequal' pour le test de Welch.
- dim - entier positif : dimension de calcul.

## 📤 Argument de sortie

- h - tableau logique : decision du test.
- p - tableau : p-values.
- ci - tableau a 2 lignes : intervalles de confiance de la difference moyenne.
- stats - structure avec les champs tstat, df et sd.

## 📄 Description

<b>ttest2</b> effectue un test t a deux echantillons le long de la premiere dimension non singleton sauf si <b>Dim</b> est specifie.

Les valeurs NaN sont ignorees independamment dans chaque echantillon teste.

## 💡 Exemple

```matlab
x = [10 11 13 15 18];
y = [7 8 8 9];
[h, p, ci, stats] = ttest2(x, y, 'Vartype', 'unequal', 'Tail', 'right');
```

## 🔗 Voir aussi

[ttest](../../statistics/ttest.md), [mean](../../statistics/mean.md), [std](../../statistics/std.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
