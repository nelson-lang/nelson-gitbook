# viscircles

Trace des cercles.

## 📝 Syntaxe

- viscircles(centers, radii)
- viscircles(ax, centers, radii)
- viscircles(..., 'Color', c)
- viscircles(..., 'LineWidth', w)
- h = viscircles(...)

## 📥 Argument d'entrée

- centers - une matrice N par 2 des centres des cercles [x y].
- radii - un scalaire ou un vecteur de N rayons.
- ax - les axes cibles.

## 📤 Argument de sortie

- h - l'objet groupe contenant les cercles tracés.

## 📄 Description


<b>viscircles</b> trace des cercles aux <b>centers</b> et <b>radii</b>donnés sur les axes. La couleur (rouge par défaut) et l'épaisseur de trait se règlent avec les arguments nom-valeur <b>'Color'</b> et <b>'LineWidth'</b>.

## 💡 Exemple



```matlab
f = figure();
axis equal
viscircles([0 0; 2 1], [1; 0.5], 'Color', 'b');
```


## 🔗 Voir aussi

[line](../../../graphics/1_plots/1_line_plots/line.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
