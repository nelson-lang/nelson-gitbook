# tscollection.resample

Fonction utilitaire pour les séries temporelles.

## 📝 Syntaxe

- resample(...)

## 📄 Description


<b>resample</b> opère sur des objets timeseries ou tscollection.

## 💡 Exemple


```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
tsc.Intersection1 = setinterpmethod(tsc.Intersection1, 'zoh');
tsc1 = resample(tsc, (1:0.5:4)');
tsc1.Intersection1.Data

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
