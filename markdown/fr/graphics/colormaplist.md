# colormaplist

Fournit la liste des palettes de couleurs.

## Syntaxe

- colormaps = colormaplist()

## Argument de sortie

- colormaps - Vecteur de chaînes des palettes de couleurs triées par ordre croissant.

## Description

<p>
            colormaplist retourne les palettes de couleurs disponibles sous forme de tableau de chaînes m-par-1.</p>

## Exemple

```matlab
f = figure('Position', [100, 100, 600, 400], 'Resize', 'off');
ax = axes('Position', [0.1, 0.2, 0.6, 0.7]);
surf(ax, peaks);
cmaps = colormaplist;
listbox = uicontrol('Style', 'listbox', 'Position', [450, 100, 100, 200], 'String', cmaps);
listbox.Callback = @(src, void) colormap(ax, cmaps(src.Value));

```

<img src="colormaplist.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.14.0  | version initiale |

## Auteur

Allan CORNET
