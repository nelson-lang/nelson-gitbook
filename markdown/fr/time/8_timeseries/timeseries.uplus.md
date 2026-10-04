# timeseries.uplus

Plus unaire pour les données d'un timeseries.

## 📝 Syntaxe

- tsOut = uplus(ts)
- tsOut = +ts

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.

## 📤 Argument de sortie

- tsOut - Objet timeseries de sortie avec des donnees inchangees.

## 📄 Description

<b>uplus</b> retourne un timeseries avec des données inchangées.

## 💡 Exemple

```matlab
ts = timeseries([1; 2], [1; 2]);
out = +ts;
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
