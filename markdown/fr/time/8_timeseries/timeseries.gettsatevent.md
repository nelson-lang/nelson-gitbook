# timeseries.gettsatevent

Renvoie les echantillons au temps d'un evenement.

## 📝 Syntaxe

- tsOut = gettsatevent(ts, eventName)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- eventName - Nom d'un evenement dans ts.Events.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie contenant les echantillons selectionnes.

## 📄 Description


<b>gettsatevent</b> Recherche l'evenement nomme et conserve les echantillons dont le temps est egal au temps de l'evenement.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsatevent(ts, 'middle').Data

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
