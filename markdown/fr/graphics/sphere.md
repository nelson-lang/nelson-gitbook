# sphere

Créer une sphère.

## Syntaxe

- [X, Y, Z] = sphere()
- [X, Y, Z] = sphere(n)
- sphere()
- sphere(n)
- sphere(ax, n)

## Argument d'entrée

- n - Nombre de points : entier positif.
- ax - Axes cibles : objet 'axes'.

## Argument de sortie

- X, Y, Z - Coordonnées x, y et z d'une sphère sans l'afficher.

## Description

<p>
            sphere crée une sphère et l'affiche.</p>

## Exemple

```matlab
f = figure();
colormap(gray);
subplot(1, 3, 1);
ax1 = gca();
sphere(ax1);
axis equal
title(_('20-by-20 faces (Default)'));
subplot(1, 3, 2);
ax2 = gca();
sphere(ax2, 50);
axis equal
title(_('50-by-50 faces'));
subplot(1, 3, 3);
ax3 = gca();
sphere(ax3,100);
axis equal
title(_('100-by-100 faces'));
```

<img src="sphere.svg" align="middle"/>

## Voir aussi

[cylinder](../graphics/cylinder.md), [surf](../graphics/surf.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
