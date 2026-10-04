# tscollection.set

Fonction pour objets de serie temporelle.

## 📝 Syntaxe

- set(...)

## 📄 Description

<b>set</b> opere sur les objets timeseries, tscollection ou les metadonnees tsdata.

## 💡 Exemple

```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
tsc = set(tsc, 'Name', 'traffic');
tsc.Name

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
