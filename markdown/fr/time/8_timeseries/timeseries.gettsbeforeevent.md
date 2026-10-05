# timeseries.gettsbeforeevent

Renvoie les echantillons avant un evenement.

## 📝 Syntaxe

- tsOut = gettsbeforeevent(ts, eventName)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- eventName - Nom d'un evenement dans ts.Events.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie contenant les echantillons selectionnes.

## 📄 Description


<b>gettsbeforeevent</b> Recherche l'evenement nomme et conserve les echantillons dont le temps est inferieur au temps de l'evenement.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsbeforeevent(ts, 'middle').Data

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
