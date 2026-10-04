# plotmatrix

Affiche une matrice de graphiques deux a deux.

## 📝 Syntaxe

- plotmatrix(X)
- plotmatrix(X, Y)
- plotmatrix(..., marqueur)
- [h, ax, bigax, p, pax] = plotmatrix(...)

## 📄 Description

<b>plotmatrix</b> cree une grille de graphiques deux a deux pour les colonnes de matrices numeriques. Avec une seule matrice, la diagonale inclut des histogrammes retournes dans <b>p</b>, tandis que <b>h</b> contient les objets line des nuages de points.

## 💡 Exemples

Creer une matrice de graphiques pour trois variables.

```matlab
X = [1 2 3; 2 3 5; 3 5 8; 4 7 13; 5 11 21];
plotmatrix(X);
```

<img src="plotmatrix_1.svg" align="middle"/>
Comparer les colonnes de deux matrices.

```matlab
X = rand(30, 2);
Y = [X(:, 1).^2, sin(X(:, 2)), X(:, 1) + X(:, 2)];
plotmatrix(X, Y, 'o');
```

<img src="plotmatrix_2.svg" align="middle"/>

## 🔗 Voir aussi

[scatter](../../../graphics/1_plots/4_data_distribution_plots/scatter.md), [histogram](../../../graphics/1_plots/4_data_distribution_plots/histogram.md), [subplot](../../../graphics/2_graphics_objects/2_layout_objects/subplot.md).
