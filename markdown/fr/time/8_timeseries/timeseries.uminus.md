# timeseries.uminus

Change le signe des donnees timeseries.

## 📝 Syntaxe

- tsOut = uminus(ts)
- tsOut = -ts

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.

## 📤 Argument de sortie

- tsOut - Objet timeseries de sortie dont le signe des donnees est change.

## 📄 Description

<b>uminus</b> Change le signe de la propriete Data et preserve le temps et les metadonnees.

## 💡 Exemple

```matlab
ts = timeseries([1; -2], [1; 2]);
out = -ts;
out.Data

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
