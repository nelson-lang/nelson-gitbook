# timeseries.mrdivide

Division matricielle droite pour les donnees timeseries.

## 📝 Syntaxe

- tsOut = mrdivide(a, b)
- tsOut = a / b

## 📥 Argument d'entrée

- a - Objet timeseries gauche ou scalaire.
- b - Objet timeseries droit ou scalaire.

## 📤 Argument de sortie

- tsOut - Objet timeseries resultant.

## 📄 Description

<b>mrdivide</b> Applique la division matricielle droite aux valeurs de donnees et preserve l'axe temporel d'une entree timeseries.

## 💡 Exemple

```matlab
ts = timeseries([10; 20], [1; 2]);
out = ts / 10;
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
