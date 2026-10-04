# timeseries.gettsbeforeatevent

Renvoie les echantillons au temps d'un evenement ou avant.

## 📝 Syntaxe

- tsOut = gettsbeforeatevent(ts, eventName)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- eventName - Nom d'un evenement dans ts.Events.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie contenant les echantillons selectionnes.

## 📄 Description

<b>gettsbeforeatevent</b> Recherche l'evenement nomme et conserve les echantillons dont le temps est inferieur ou egal au temps de l'evenement.

## 💡 Exemple

```matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsbeforeatevent(ts, 'middle').Data

```

## 🔗 Voir aussi

[timeseries](../../time/timeseries.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
