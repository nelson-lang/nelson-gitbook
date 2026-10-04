# quantile

Quantiles d'un jeu de données.

## 📝 Syntaxe

- Q = quantile(A, p)
- Q = quantile(A, n)
- Q = quantile(A, p, dim)
- Q = quantile(A, p, vecdim)
- Q = quantile(A, p, 'all')
- Q = quantile(..., 'Method', method)

## 📄 Description

<b>quantile</b> retourne les quantiles pour des probabilités dans l'intervalle [0,1]. Si le second argument est un entier supérieur à un, il est interprété comme le nombre de quantiles régulièrement espacés.

Les valeurs <b>NaN</b> sont ignorées. Les méthodes supportées sont <b>midpoint</b>, <b>exact</b>, <b>inclusive</b>, <b>exclusive</b> et <b>approximate</b>.

<b>A</b> peut être un tableau numérique réel, un tableau <b>datetime</b> ou un tableau <b>duration</b>. Pour des données datetime ou duration, les quantiles ont la même classe et le même Format que <b>A</b>, et les valeurs <b>NaT</b> sont ignorées comme les valeurs <b>NaN</b>.

## 💡 Exemples

```matlab
A = [2 5 6 10 11 13];
Q = quantile(A, [0.25 0.5 0.75])
```

données datetime et duration

```matlab
d = hours([1 2 3 4 10]);
Q = quantile(d, [0.25 0.5 0.75])
```

## 🔗 Voir aussi

[prctile](../../statistics/prctile.md), [iqr](../../statistics/iqr.md), [median](../../statistics/median.md).

## 🕔 Historique

| Version | 📄 Description                           |
| ------- | ---------------------------------------- |
| 2.0.0   | version initiale                         |
| 2.0.0   | données datetime et duration supportées. |

<!--
## 👤 Auteur

Allan CORNET
-->
