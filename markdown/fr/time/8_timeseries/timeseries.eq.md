# timeseries.eq

Compare deux objets timeseries echantillon par echantillon.

## 📝 Syntaxe

- tfTs = eq(a, b)
- tfTs = a == b

## 📥 Argument d'entrée

- a - Objet timeseries gauche ou scalaire.
- b - Objet timeseries droit ou scalaire.

## 📤 Argument de sortie

- tfTs - Objet timeseries resultant.

## 📄 Description


<b>eq</b> Compare les valeurs de donnees en preservant l'axe temporel lorsqu'une entree timeseries est utilisee.

## 💡 Exemple


```matlab
left = timeseries([1; 2], [1; 2]);
right = timeseries([1; 3], [1; 2]);
out = left == right;
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
