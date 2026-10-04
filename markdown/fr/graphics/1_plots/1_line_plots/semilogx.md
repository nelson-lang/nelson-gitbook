# semilogx

Graphique semi-logarithmique (axe x en échelle logarithmique).

## 📝 Syntaxe

- semilogx(X, Y)
- semilogx(X, Y, LineSpec)
- semilogx(Y)
- semilogx(Y, LineSpec)
- semilogx(ax, ...)
- semilogx(..., propertyName, propertyValue)
- go = semilogx(...)

## 📥 Argument d'entrée

- X - Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
- Y - Coordonnées en échelle linéaire : scalaire, vecteur ou matrice.
- LineSpec - Style de ligne, marqueur et/ou couleur : vecteur de caractères ou chaîne scalaire.
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaine scalaire ou un vecteur ligne de caracteres. Voir [proprietes de line](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.line.properties.md) pour la liste des proprietes.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- go - Un objet graphique : type ligne.

## 📄 Description

<b>semilogx(X, Y)</b> trace des données en utilisant une échelle logarithmique en base 10 pour l'axe x et une échelle normale (linéaire) pour l'axe y.

<b>semilogx</b> utilise exactement la même syntaxe que la commande <b>plot</b>.

## 💡 Exemples

```matlab
f = figure();
x = logspace(-1,2);
semilogx(x, x);
grid on
```

<img src="semilogx_1.svg" align="middle"/>

```matlab
f = figure();
x = logspace(-1, 2, 15);
y = 13 + x;
semilogx(x, y, 'x', 'MarkerFaceColor', [0 0.447 0.741])
grid on
```

<img src="semilogx_2.svg" align="middle"/>

## 🔗 Voir aussi

[semilogy](../../../graphics/1_plots/1_line_plots/semilogy.md), [line](../../../graphics/1_plots/1_line_plots/line.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md), [grid](../../../graphics/3_labels_styling/1_axes_appearance/grid.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
