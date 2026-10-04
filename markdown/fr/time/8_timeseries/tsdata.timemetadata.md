# tsdata.timemetadata

Fonction pour objets de serie temporelle.

## 📝 Syntaxe

- timemetadata(...)

## 📄 Description

<b>timemetadata</b> opere sur les objets timeseries, tscollection ou les metadonnees tsdata.

## 💡 Exemple

```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1.TimeInfo.Units = 'hours';
count1.TimeInfo.Units

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
