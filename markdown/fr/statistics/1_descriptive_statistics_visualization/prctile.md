# prctile

Percentiles d'un jeu de données.

## 📝 Syntaxe

- P = prctile(A, pct)
- P = prctile(A, pct, dim)
- P = prctile(A, pct, vecdim)
- P = prctile(A, pct, 'all')
- P = prctile(..., 'Method', method)

## 📄 Description

<b>prctile</b> retourne les percentiles pour des pourcentages dans l'intervalle [0,100].

Les valeurs <b>NaN</b> sont ignorées. Les méthodes supportées sont <b>midpoint</b>, <b>exact</b>, <b>inclusive</b>, <b>exclusive</b> et <b>approximate</b>.

<b>A</b> peut être un tableau numérique réel, un tableau <b>datetime</b> ou un tableau <b>duration</b>. Pour des données datetime ou duration, <b>P</b> a la même classe et le même Format que <b>A</b>, et les valeurs <b>NaT</b> sont ignorées comme les valeurs <b>NaN</b>.

## 💡 Exemples

```matlab
A = (1:5)' * (2:6);
P = prctile(A, [25 50 75], 1)
```

données datetime et duration

```matlab
t = datetime(2024, 1, [1 3 5 7 30]);
P = prctile(t, [25 50 75])
```

## 🔗 Voir aussi

[quantile](../../statistics/quantile.md), [iqr](../../statistics/iqr.md), [median](../../statistics/median.md).

## 🕔 Historique

| Version | 📄 Description                           |
| ------- | ---------------------------------------- |
| 2.0.0   | version initiale                         |
| 2.0.0   | données datetime et duration supportées. |

<!--
## 👤 Auteur

Allan CORNET
-->
