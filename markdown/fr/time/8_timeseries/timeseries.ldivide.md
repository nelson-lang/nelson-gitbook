# timeseries.ldivide

Division gauche element par element des donnees timeseries.

## 📝 Syntaxe

- tsOut = ldivide(a, b)
- tsOut = a .\\ b

## 📥 Argument d'entrée

- a - Objet timeseries gauche ou scalaire.
- b - Objet timeseries droit ou scalaire.

## 📤 Argument de sortie

- tsOut - Objet timeseries resultant.

## 📄 Description


<b>ldivide</b> Applique la division gauche element par element et preserve l'axe temporel d'une entree timeseries.

## 💡 Exemple


```matlab
ts = timeseries([10; 20], [1; 2]);
out = 10 .\ ts;
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
