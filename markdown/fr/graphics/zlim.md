# zlim

définir ou obtenir les limites de l'axe des z.

## Syntaxe

- lims = zlim()
- zlim([zmin, zmax])
- zlim('auto')
- zlim('manual')
- m = zlim('mode')
- zlim(ax, ...)

## Argument d'entrée

- [zmin, zmax] - coordonnées z : vecteur ou matrice.
- 'auto' - activer la sélection automatique des limites.
- 'manual' - figer les limites de l'axe des z à leur valeur actuelle.
- 'mode' - retourne le mode actuel des limites de l'axe des z.
- ax - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

## Argument de sortie

- lims - vecteur à deux éléments : [zmin, zmax]
- m - 'auto' ou 'manual'.

## Description

<p>
            zlim obtient ou définit les limites de l'axe des z pour le tracé actuel.</p>

## Exemple

```matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = zlim()
m = zlim('mode')

```

## Voir aussi

[axes](../graphics/axes.md), [axis](../graphics/axis.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
