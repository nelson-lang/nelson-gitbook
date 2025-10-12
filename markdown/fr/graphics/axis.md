# axis

Définit les limites et les rapports d'aspect des axes.

## Syntaxe

- axis([xmin, xmax, ymin, ymax, zmin, zmax, cmin, cmax])
- axis([xmin, xmax, ymin, ymax, zmin, zmax])
- axis([xmin, xmax, ymin, ymax])
- axis(style)
- axis(mode)
- axis(visibility)
- lim = axis()
- axis(ax, ...)

## Argument d'entrée

- [xmin, xmax, ymin, ymax, zmin, zmax, cmin, cmax] - définit les limites sur les axes X, Y, Z et couleur.
- [xmin, xmax, ymin, ymax, zmin, zmax] - définit uniquement les limites sur X, Y, Z.
- [xmin, xmax, ymin, ymax] - définit uniquement les limites sur X, Y.
- style - 'tight', 'equal', 'image', 'square', 'fill', 'vis3d' ou 'normal' (par défaut).
- cax - axes.
- visibility - 'off' ou 'on' (par défaut).
- mode - 'manual' (désactive l'ajustement automatique des axes selon les enfants de l'objet axe courant) ou 'auto' (choisit automatiquement toutes les limites d'axe).

## Argument de sortie

- lim - Pour 2D : [xmin, xmax, ymin, ymax] ou pour 3D : [xmin, xmax, ymin, ymax, zmin, zmax]

## Description

<p>
            axes définit les limites et l'apparence des axes.</p>

## Exemple

```matlab
f = figure();
t = 0:0.01:2*pi;
x = cos(t);
subplot(2, 2, 1);
plot(t, x);
title ('normal plot');

subplot(2, 2, 2);
plot (t, x);
title('axis square');
axis('square');

subplot(2, 2, 3);
plot (t, x);
title('axis equal');
axis('equal');

subplot(2, 2, 4);
plot (t, x);
title('normal plot again');
axis('normal');
```

<img src="axis.svg" align="middle"/>

## Voir aussi

[gca](../graphics/gca.md), [axes](../graphics/axes.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
