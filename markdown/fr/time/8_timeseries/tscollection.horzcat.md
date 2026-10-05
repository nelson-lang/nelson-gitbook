# tscollection.horzcat

Fonction pour objets de serie temporelle.

## 📝 Syntaxe

- horzcat(...)

## 📄 Description


<b>horzcat</b> opere sur les objets timeseries, tscollection ou les metadonnees tsdata.

## 💡 Exemple


```matlab
ts1 = timeseries([1; 2], [10; 11], 'Name', 'a');
ts2 = timeseries([3; 4], [10; 11], 'Name', 'b');
tsc = [tscollection(ts1), tscollection(ts2)];
gettimeseriesnames(tsc)

```


## 🔗 Voir aussi

[timeseries](../../time/8_timeseries/timeseries.md), [tscollection](../../time/8_timeseries/tscollection.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
