# timeseries.rdivide

Division droite element par element des donnees timeseries.

## 📝 Syntaxe

- tsOut = rdivide(a, b)
- tsOut = a ./ b

## 📥 Argument d'entrée

- a - Objet timeseries gauche ou scalaire.
- b - Objet timeseries droit ou scalaire.

## 📤 Argument de sortie

- tsOut - Objet timeseries resultant.

## 📄 Description

<b>rdivide</b> Divise les valeurs de donnees element par element et preserve l'axe temporel d'une entree timeseries.

## 💡 Exemple

```matlab
ts = timeseries([10; 20], [1; 2]);
out = ts ./ 10;
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
