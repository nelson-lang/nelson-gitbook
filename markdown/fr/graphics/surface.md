# surface

Tracé de surface primitif.

## Syntaxe

- surface(X, Y, Z)
- surface(X, Y, Z, C)
- surface(Z)
- surface(Z, C)
- surface(parent, ...)
- surface(..., propertyName, propertyValue)
- go = surface(...)

## Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- Z - Coordonnées z : vecteur ou matrice.
- C - Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
- parent - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## Argument de sortie

- go - Un objet graphique : type surface.

## Description

<p>
            surf et surface sont deux fonctions utilisées pour créer des tracés de surface 3D, mais il existe quelques différences entre elles.</p>

<p>
                La fonction surf est utilisée pour tracer une surface définie par une fonction de deux variables ou par un ensemble de points de données dispersés.</p>

<p>Elle nécessite trois arguments d'entrée : X, Y et Z. X et Y définissent les coordonnées des points de données, et Z définit la hauteur de la surface à chaque point.</p>

<p>
                    La fonction surf offre également des options supplémentaires pour personnaliser l'apparence du tracé, telles que l'éclairage et la couleur.</p>

<p></p>

<p>
                        La fonction surface est utilisée pour tracer une surface définie par une matrice de données. Elle nécessite trois arguments d'entrée : X, Y et Z. X et Y définissent les coordonnées des points de données, et Z est une matrice qui définit la hauteur de la surface à chaque point.</p>

<p>La taille de Z doit correspondre à la taille de X et Y. La fonction surface offre également des options supplémentaires pour personnaliser l'apparence du tracé, telles que l'éclairage et la couleur.</p>

<p>En résumé, les fonctions surf et surface sont utilisées pour des tracés de surface 3D, mais surf est utilisée pour une surface définie par une fonction de deux variables ou par un ensemble de points de données dispersés, tandis que surface est utilisée pour une surface définie par une matrice de données, et la taille de Z doit correspondre à celle de X et Y.</p>

## Exemple

```matlab
f = figure();
data = peaks(50);
ax1 = subplot(1, 2, 1);
s1 = surface(ax1, data);
ax2 = subplot(1, 2, 2);
s2 = surf(ax2, data);

```

<img src="surface_1.svg" align="middle"/>

## Voir aussi

[surf](../graphics/surf.md), [view](../graphics/view.md), [meshgrid](../elementary_functions/meshgrid.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | Version initiale |

## Auteur

Allan CORNET
