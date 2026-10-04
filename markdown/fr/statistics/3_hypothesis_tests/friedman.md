# friedman

Test de Friedman pour donnees en blocs.

## 📝 Syntaxe

- p = friedman(X)
- p = friedman(X, reps)
- p = friedman(X, reps, displayopt)
- [p, tbl, stats] = friedman(...)

## 📄 Description

<b>friedman</b> effectue un test non parametrique des effets de traitements en colonnes pour des donnees en blocs. Les lignes sont les blocs et les colonnes sont les traitements.

Lorsque <b>reps</b> est superieur a un, chaque bloc occupe <b>reps</b> lignes consecutives. <b>displayopt</b> peut valoir <b>'on'</b> ou <b>'off'</b>.

## 💡 Exemple

```matlab
X = [9 7 6; 8 6 5; 7 8 6; 10 9 7; 9 10 8];
[p, tbl, stats] = friedman(X, 'off')
```

## 🔗 Voir aussi

[anova2](../../statistics/anova2.md), [kruskalwallis](../../statistics/kruskalwallis.md), [chi2cdf](../../statistics/chi2cdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
