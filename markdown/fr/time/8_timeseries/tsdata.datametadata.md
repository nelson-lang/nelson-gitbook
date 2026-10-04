# tsdata.datametadata

Fonction pour objets de serie temporelle.

## 📝 Syntaxe

- datametadata(...)

## 📄 Description

<b>datametadata</b> opere sur les objets timeseries, tscollection ou les metadonnees tsdata.

## 💡 Exemple

```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1.DataInfo.Units = 'cars';
count1.DataInfo.Interpolation = tsdata.interpolation('zoh');
count1.DataInfo

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
