# timeseries.resample

Reechantillonne un objet timeseries a de nouveaux temps.

## 📝 Syntaxe

- tsOut = resample(ts, newTime)
- tsOut = resample(ts, newTime, method)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- newTime - Nouveaux temps d'echantillon.
- method - Methode d'interpolation optionnelle : linear, zoh ou nearest.

## 📤 Argument de sortie

- tsOut - Objet timeseries reechantillonne en sortie.

## 📄 Description


<b>resample</b> Interpole les donnees sur un nouveau vecteur de temps et met a jour Time en preservant les metadonnees.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
ts2 = resample(ts, [10; 10.5; 11]);
ts2.Data

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
