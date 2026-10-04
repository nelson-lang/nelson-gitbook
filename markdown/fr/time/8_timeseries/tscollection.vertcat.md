# tscollection.vertcat

Fonction pour objets de serie temporelle.

## 📝 Syntaxe

- vertcat(...)

## 📄 Description

<b>vertcat</b> opere sur les objets timeseries, tscollection ou les metadonnees tsdata.

## 💡 Exemple

```matlab
ts1 = timeseries([1], [10], 'Name', 'speed');
ts2 = timeseries([2], [11], 'Name', 'speed');
tsc = [tscollection(ts1); tscollection(ts2)];
tsc.Time

```

## 🔗 Voir aussi

[timeseries](../../time/timeseries.md), [tscollection](../../time/tscollection.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
