# timeseries.setabstime

Definit la date de debut absolue des temps d'echantillon.

## 📝 Syntaxe

- tsOut = setabstime(ts, startDate)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- startDate - Chaine de date utilisee comme origine temporelle absolue.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie avec la date de debut absolue definie.

## 📄 Description

<b>setabstime</b> Stocke une date de debut absolue dans TimeInfo. Les temps d'echantillon numeriques restent relatifs a cette date de debut.

## 💡 Exemple

```matlab
ts = timeseries([1; 2], [0; 1]);
ts = setabstime(ts, '01-Jan-2024');
ts.TimeInfo.StartDate

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
