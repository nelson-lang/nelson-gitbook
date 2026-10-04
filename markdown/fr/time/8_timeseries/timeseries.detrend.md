# timeseries.detrend

Supprime une tendance des donnees timeseries.

## 📝 Syntaxe

- tsOut = detrend(ts)
- tsOut = detrend(ts, 'constant')

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- option - Mode detrend optionnel.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie sans tendance.

## 📄 Description

<b>detrend</b> Applique detrend aux donnees numeriques et preserve l'axe temporel et les metadonnees.

## 💡 Exemple

```matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts = detrend(ts, 'constant');
ts.Data

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
