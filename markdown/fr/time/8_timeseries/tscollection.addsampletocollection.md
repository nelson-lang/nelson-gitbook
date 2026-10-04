# tscollection.addsampletocollection

Fonction utilitaire pour les séries temporelles.

## 📝 Syntaxe

- addsampletocollection(...)

## 📄 Description

<b>addsampletocollection</b> opère sur des objets timeseries ou tscollection.

## 💡 Exemple

```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
tsc = addsampletocollection(tsc, 'Time', 2.25, 'Intersection1', 5);
tsc.Intersection2.Data

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
