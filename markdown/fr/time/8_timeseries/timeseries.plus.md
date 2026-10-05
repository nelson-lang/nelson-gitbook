# timeseries.plus

Ajoute des donnees timeseries.

## 📝 Syntaxe

- tsOut = plus(a, b)
- tsOut = a + b

## 📥 Argument d'entrée

- a - Objet timeseries gauche ou scalaire.
- b - Objet timeseries droit ou scalaire.

## 📤 Argument de sortie

- tsOut - Objet timeseries resultant.

## 📄 Description


<b>plus</b> Ajoute les valeurs de donnees et preserve l'axe temporel d'une entree timeseries.

## 💡 Exemple


```matlab
a = timeseries([1; 2], [1; 2]);
b = timeseries([10; 20], [1; 2]);
out = a + b;
out.Data

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
