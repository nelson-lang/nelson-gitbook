# timeseries.addsample

Ajoute un echantillon a un objet timeseries.

## 📝 Syntaxe

- tsOut = addsample(ts, 'Time', t, 'Data', x)
- tsOut = addsample(ts, 'Time', t, 'Data', x, 'Quality', q)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- t - Temps d'echantillon a ajouter.
- x - Donnees d'echantillon a ajouter.
- q - Valeur de qualite optionnelle.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie avec l'echantillon ajoute.

## 📄 Description

<b>addsample</b> Ajoute un echantillon avec des paires nom-valeur. L'ordre des echantillons existants est preserve par l'operation d'ajout.

## 💡 Exemple

```matlab
ts = timeseries([1; 2], [10; 11], 'Name', 'speed');
ts = addsample(ts, 'Time', 12, 'Data', 3);
ts.Time

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
