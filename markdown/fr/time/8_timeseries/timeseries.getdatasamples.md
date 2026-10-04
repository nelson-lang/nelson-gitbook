# timeseries.getdatasamples

Renvoie les echantillons de donnees par indice.

## 📝 Syntaxe

- data = getdatasamples(ts, indices)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- indices - Indices d'echantillons.

## 📤 Argument de sortie

- data - Echantillons de donnees extraits.

## 📄 Description

<b>getdatasamples</b> Extrait les valeurs de donnees pour les indices d'echantillons demandes sans renvoyer d'enveloppe timeseries.

## 💡 Exemple

```matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
getdatasamples(ts, [1 3])

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
