# timeseries.append

Ajoute des echantillons timeseries.

## 📝 Syntaxe

- tsOut = append(ts1, ts2)
- tsOut = append(ts1, ts2, ts3)

## 📥 Argument d'entrée

- ts1 - Premier objet timeseries.
- ts2 - Objet timeseries a ajouter.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie avec les echantillons ajoutes.

## 📄 Description


<b>append</b> Concatene les echantillons de deux objets timeseries ou plus le long de la dimension des echantillons.

## 💡 Exemple


```matlab
ts1 = timeseries([1; 2], [10; 11], 'Name', 'speed');
ts2 = timeseries(3, 12, 'Name', 'speed');
ts = append(ts1, ts2);
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
