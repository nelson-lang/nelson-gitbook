# timeseries

Cree des donnees de serie temporelle.

## 📝 Syntaxe

- ts = timeseries(data)
- ts = timeseries(data, time)
- ts = timeseries(data, time, quality)
- ts = timeseries(data, time, 'Name', name)

## 📥 Argument d'entrée

- data - Donnees echantillonnees.
- time - Temps numeriques, duration, datetime ou textes de date.
- quality - Valeurs de qualite optionnelles.

## 📤 Argument de sortie

- ts - Un objet timeseries.

## 📄 Description

<b>timeseries</b> stocke des donnees echantillonnees, des temps, des valeurs de qualite optionnelles, des metadonnees et des evenements.

Les methodes couvrent selection, evenements, interpolation, synchronisation, statistiques, arithmetique, trace graphique et conversion vers timetable.

## 💡 Exemple

```matlab
x = [-0.2 -0.3 13; -0.1 -0.4 15; NaN 2.8 17; 0.5 0.3 NaN; -0.3 -0.1 15];
tsPosition = timeseries(x(:, 1:2), (1:5)', 'Name', 'Position');
getdatasamplesize(tsPosition)

```

## 🔗 Voir aussi

[tscollection](../../time/tscollection.md), [istimeseries](../../time/istimeseries.md), [timeseries2timetable](../../table/timeseries2timetable.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
