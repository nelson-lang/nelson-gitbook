# ttest

Test t a un echantillon ou apparie

## 📝 Syntaxe

- h = ttest(x)
- h = ttest(x, m)
- h = ttest(x, y)
- [h, p, ci, stats] = ttest(..., 'Alpha', alpha, 'Tail', tail, 'Dim', dim)

## 📥 Argument d'entrée

- x - tableau reel : donnees d'echantillon.
- m - scalaire reel, 0 par defaut : moyenne supposee.
- y - tableau reel de meme taille que x : echantillon apparie.
- alpha - scalaire dans (0,1), 0.05 par defaut : niveau de signification.
- tail - 'both', 'right' ou 'left'.
- dim - entier positif : dimension de calcul.

## 📤 Argument de sortie

- h - tableau logique : decision du test.
- p - tableau : p-values.
- ci - tableau a 2 lignes : intervalles de confiance de la difference moyenne.
- stats - structure avec les champs tstat, df et sd.

## 📄 Description

<b>ttest</b> effectue un test t le long de la premiere dimension non singleton sauf si <b>Dim</b> est specifie.

Les valeurs NaN sont ignorees dans chaque tranche testee.

## 💡 Exemple

```matlab
x = [2 4 5 6 9];
[h, p, ci, stats] = ttest(x, 4);
[h2, p2] = ttest([4 6 7], [3 5 7], 'Tail', 'right');
```

## 🔗 Voir aussi

[mean](../../statistics/mean.md), [std](../../statistics/std.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
