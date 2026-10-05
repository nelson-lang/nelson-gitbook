# tscollection.loadobj

Restaure un objet tscollection depuis des donnees sauvegardees.

## 📝 Syntaxe

- tsc = tscollection.loadobj(value)

## 📥 Argument d'entrée

- value - Un objet tscollection ou une structure contenant les champs de stockage de collection.

## 📤 Argument de sortie

- tsc - Un objet tscollection.

## 📄 Description


<b>tscollection.loadobj</b> reconstruit une collection depuis un objet ou une structure sauvegardee.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
tsc = tscollection(ts, 'Name', 'run');
state = struct(tsc);
copy = tscollection.loadobj(state);
gettimeseriesnames(copy)

```


## 🔗 Voir aussi

[tscollection](../../time/8_timeseries/tscollection.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
