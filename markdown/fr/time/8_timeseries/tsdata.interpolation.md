# tsdata.interpolation

Fonction pour objets de serie temporelle.

## 📝 Syntaxe

- interpolation(...)

## 📄 Description


<b>interpolation</b> opere sur les objets timeseries, tscollection ou les metadonnees tsdata.

## 💡 Exemple


```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1 = setinterpmethod(count1, 'zoh');
getinterpmethod(count1)

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
