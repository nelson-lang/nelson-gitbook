# retime

Ajuster les donnees d'une timetable a de nouveaux temps de lignes.

## 📝 Syntaxe

- TT2 = retime(TT1, newTimes)
- TT2 = retime(TT1, newTimes, method)
- TT2 = retime(TT1, newTimeStep, method)
- TT2 = retime(TT1, 'regular', method, 'TimeStep', dt)
- TT2 = retime(TT1, 'regular', method, 'SampleRate', Fs)

## 📥 Argument d'entrée

- TT1 - Timetable d'entree.
- newTimes - Nouveaux temps datetime ou duration.
- newTimeStep - Pas regulier nomme comme 'daily', 'hourly' ou 'secondly'.
- method - Methode de remplissage, voisinage, interpolation ou agregation.

## 📤 Argument de sortie

- TT2 - Timetable retimee.

## 📄 Description

<b>retime</b> renvoie une timetable dont les temps de lignes correspondent a <b>newTimes</b> ou a une grille reguliere.

Les methodes de remplissage et de voisinage incluent fillwithmissing, fillwithconstant, nearest, previous et next.

Les methodes d'interpolation numerique incluent linear, spline, pchip et makima. Les methodes d'agregation incluent sum, mean, min, max, median, prod, count, firstvalue et lastvalue.

## 💡 Exemple

```matlab
t = datetime(2024, 1, 1) + days(0:2)';
TT = timetable(t, [1; 3; 5]);
TT2 = retime(TT, t(1):days(1):t(3), 'nearest')
```

## 🔗 Voir aussi

[synchronize](../../table/synchronize.md), [timetable](../../table/timetable.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
