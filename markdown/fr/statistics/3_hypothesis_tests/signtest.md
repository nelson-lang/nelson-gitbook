# signtest

Test des signes.

## 📝 Syntaxe

- p = signtest(x)
- p = signtest(x, y)
- p = signtest(x, m)
- p = signtest(x, y, Name, Value)
- [p, h, stats] = signtest(...)

## 📄 Description

<b>signtest</b> effectue un test des signes pour une mediane ou une difference appariee. Si <b>y</b> est omis, les valeurs de <b>x</b> sont testees contre zero. Si <b>y</b> est un scalaire, les valeurs de <b>x</b> sont testees contre ce scalaire.

Les arguments nom-valeur incluent <b>Alpha</b>, <b>Method</b> et <b>Tail</b>. Les differences nulles et les valeurs <b>NaN</b> sont omises.

## 💡 Exemple

```matlab
x = [1 2 -3 4 -5];
[p, h, stats] = signtest(x)
```

## 🔗 Voir aussi

[signrank](../../statistics/signrank.md), [ranksum](../../statistics/ranksum.md), [binocdf](../../statistics/binocdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
