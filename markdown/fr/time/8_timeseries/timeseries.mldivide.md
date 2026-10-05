# timeseries.mldivide

Division matricielle gauche pour les donnees timeseries.

## 📝 Syntaxe

- tsOut = mldivide(a, b)
- tsOut = a \\ b

## 📥 Argument d'entrée

- a - Objet timeseries gauche ou scalaire.
- b - Objet timeseries droit ou scalaire.

## 📤 Argument de sortie

- tsOut - Objet timeseries resultant.

## 📄 Description


<b>mldivide</b> Applique la division matricielle gauche aux valeurs de donnees et preserve l'axe temporel d'une entree timeseries.

## 💡 Exemple


```matlab
ts = timeseries([10; 20], [1; 2]);
out = 10 \ ts;
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
