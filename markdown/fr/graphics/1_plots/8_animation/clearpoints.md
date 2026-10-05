# clearpoints

Effacer les points d'une ligne animee.

## 📝 Syntaxe

- clearpoints(an)

## 📥 Argument d'entrée

- an - objet graphique animatedline.

## 📄 Description


<b>clearpoints</b> supprime toutes les coordonnees stockees dans une ligne animee et rafraichit la figure parente.

## 💡 Exemple



```matlab
an = animatedline(1:5, [2 4 1 3 5]);
clearpoints(an);
[x, y] = getpoints(an)
```


## 🔗 Voir aussi

[animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [addpoints](../../../graphics/1_plots/8_animation/addpoints.md), [getpoints](../../../graphics/1_plots/8_animation/getpoints.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
