# quiver

Tracé de champ de vecteurs.

## Syntaxe

- quiver(X, Y, U, V)
- quiver(U, V)
- quiver(..., LineSpec)
- quiver(..., propertyName, propertyValue)
- quiver(parent, ...)
- gr = quiver(...)

## Argument d'entrée

- X - Coordonnées x des bases des flèches : scalaire, vecteur ou matrice.
- Y - Coordonnées y des bases des flèches : scalaire, vecteur ou matrice.
- U - Composantes x : scalaire, vecteur ou matrice.
- V - Composantes y : scalaire, vecteur ou matrice.
- LineSpec - Style de ligne, marqueur et/ou couleur : vecteur de caractères ou chaîne scalaire.
- parent - Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.
- propertyName - Chaîne scalaire ou vecteur ligne de caractères.
- propertyValue - Une valeur.

## Argument de sortie

- gr - Groupe d'objets graphiques : flèches.

## Description

<p>
            quiver(X, Y, U, V) trace des vecteurs vitesse sous forme de flèches avec les composantes (U,V) au point (X, Y).
        </p>

<p>
            quiver essaie d'ajuster la longueur des flèches pour éviter qu'elles ne se chevauchent.
        </p>

<p>
            L'implémentation actuelle est lente mais peut être optimisée en utilisant la propriété DrawLater de la figure. Une optimisation par une fonction native pourrait être envisagée dans une prochaine version.
        </p>

## Exemples

```matlab
f = figure();
f.DrawLater = 'on';
[X, Y] = meshgrid(0:pi/8:pi, -pi:pi/8:pi);
U1 = sin(X);
V1 = cos(Y);
quiver(U1,V1, 'r')
f.DrawLater = 'off';
```

<img src="quiver_1.svg" align="middle"/>

```matlab
f = figure();
f.DrawLater = 'on';
[X, Y] = meshgrid(0:pi/8:pi, -pi:pi/8:pi);
U1 = sin(X);
V1 = cos(Y);
U2 = sin(Y);
V2 = cos(X);
ax1 = subplot(1, 2, 1);
axis equal
title(ax1, 'Left Plot')
quiver(ax1, X, Y, U1, V1)
ax2 = subplot(1, 2, 2);
quiver(X,Y,U2,V2)
axis equal
title(ax2, 'Right Plot')
f.DrawLater = 'off';
```

<img src="quiver_2.svg" align="middle"/>

## Voir aussi

[meshgrid](../graphics/meshgrid.md), [subplot](../graphics/subplot.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
