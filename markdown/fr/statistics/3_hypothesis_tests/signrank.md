# signrank

Test des rangs signes de Wilcoxon.

## 📝 Syntaxe

- p = signrank(x)
- p = signrank(x, y)
- p = signrank(x, y, Name, Value)
- [p, h, stats] = signrank(...)

## 📄 Description

<b>signrank</b> effectue un test apparie des rangs signes de Wilcoxon. Si <b>y</b> est omis, les valeurs de <b>x</b> sont testees contre zero. Si <b>y</b> est un scalaire, les valeurs de <b>x</b> sont testees contre ce scalaire.

Les arguments nom-valeur incluent <b>Alpha</b>, <b>Tail</b> et <b>Method</b>. Les differences nulles et <b>NaN</b> sont omises.

## 💡 Exemple

```matlab
x = [1 3 5 -2];
[p, h, stats] = signrank(x)
```

## 🔗 Voir aussi

[ranksum](../../statistics/ranksum.md), [ttest](../../statistics/ttest.md), [normcdf](../../statistics/normcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
