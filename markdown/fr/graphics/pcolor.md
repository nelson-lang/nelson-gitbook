# pcolor

Graphique en pseudo-couleurs.

## Syntaxe

- pcolor(C)
- pcolor(X, Y, C)
- pcolor(parent, ...)
- go = pcolor(...)

## Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- C - Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
- parent - Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.

## Argument de sortie

- go - Objet graphique : type surface.

## Description

<p>
            pcolor(C) crée un graphique en pseudo-couleurs des données de la matrice C, où chaque cellule ou « face » du graphique est colorée selon la valeur correspondante dans la matrice.
        </p>

<p>
            La couleur de chaque face est déterminée par une palette de couleurs (colormap), qui associe les valeurs des données à des couleurs.
        </p>

## Exemples

```matlab
X = linspace(0, 2*pi, 100);
Y = linspace(0, 2*pi, 100);
Z = sin(X' * Y);
f = figure()
pcolor(X, Y, Z)
```

<img src="pcolor_1.svg" align="middle"/>

```matlab
f = figure();
rng('default');
ax1 = subplot(1, 2, 1);
C1 = rand(20, 10);
pcolor(ax1, C1)
ax2 = subplot(1, 2, 2);
C2 = rand(50, 10);
pcolor(ax2, C2)
```

<img src="pcolor_2.svg" align="middle"/>

## Voir aussi

[surf](../graphics/surf.md), [meshgrid](../elementary_functions/meshgrid.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
