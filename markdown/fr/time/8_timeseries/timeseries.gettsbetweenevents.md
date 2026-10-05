# timeseries.gettsbetweenevents

Renvoie les echantillons entre deux evenements.

## 📝 Syntaxe

- tsOut = gettsbetweenevents(ts, firstEvent, secondEvent)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- firstEvent - Nom du premier evenement.
- secondEvent - Nom du second evenement.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie contenant les echantillons selectionnes.

## 📄 Description


<b>gettsbetweenevents</b> Conserve les echantillons dont le temps est compris entre les temps des evenements nommes, bornes incluses.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('start', 10));
ts = addevent(ts, tsdata.event('stop', 11));
gettsbetweenevents(ts, 'start', 'stop').Data

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
