# timeseries.delsample

Supprime des echantillons d'un objet timeseries.

## 📝 Syntaxe

- tsOut = delsample(ts, 'Index', indices)
- tsOut = delsample(ts, 'Time', times)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- indices - Indices d'echantillons a supprimer.
- times - Temps d'echantillon a supprimer.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie avec les echantillons supprimes.

## 📄 Description


<b>delsample</b> Supprime les echantillons selectionnes par indice ou par valeurs temporelles exactes.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = delsample(ts, 'Index', 2);
ts.Data

```


## 🔗 Voir aussi

[timeseries](../../time/8_timeseries/timeseries.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
