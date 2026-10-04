# qqplot

Trace quantile-quantile.

## 📝 Syntaxe

- qqplot(x)
- qqplot(x, y)
- qqplot(..., p)
- h = qqplot(...)

## 📄 Description

<b>qqplot</b> cree un trace quantile-quantile pour des donnees d'echantillon.

Avec un echantillon, Nelson compare les quantiles de l'echantillon aux quantiles normaux standards. Avec deux echantillons, Nelson compare les quantiles empiriques des deux echantillons. La valeur retournee contient les handles des lignes pour les donnees, la ligne des quartiles et la ligne de reference extrapolee.

## 💡 Exemple

```matlab
x = randn(100, 1);
qqplot(x)
```

## 🔗 Voir aussi

[quantile](../../statistics/quantile.md), [norminv](../../statistics/norminv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
