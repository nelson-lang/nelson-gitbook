# colorbar

Barre de couleur affichant l'échelle des couleurs.

## Syntaxe

- colorbar()
- colorbar('off')
- colorbar(..., propertyName, propertyValue)
- colorbar(target, ...)
- colorbar(target, 'off')
- c = colorbar(...)

## Argument d'entrée

- propertyName - une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - une valeur.
- target - Cible : axes.
- 'off' - supprime la barre de couleur associée aux axes courants.

## Argument de sortie

- c - objet graphique : axes de la barre de couleur.

## Description

<p>
            colorbar ajoute une barre de couleur à un graphique.</p>

## Exemples

```matlab
f = figure();
surf(peaks);
axis('square');
colormap('summer');
colorbar()

```

<img src="colorbar_1.svg" align="middle"/>

```matlab
f = figure();
surf(peaks);
axis('square');
colormap('gray');
cb = colorbar(gca);
```

<img src="colorbar_2.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
