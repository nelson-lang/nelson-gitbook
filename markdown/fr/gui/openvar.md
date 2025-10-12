# openvar

Ouvre une variable dans l'éditeur de variables

## Syntaxe

- openvar(varname)

## Argument d'entrée

- varname: a string or row vector characters - Name of the variable to open. Must exist in the current workspace.

## Description

<p>openvar(varname) ouvre la variable nommée varname dans l'éditeur de variables de Nelson pour inspection et édition graphique.</p>

<p>Toutes les modifications effectuées dans l'éditeur sont appliquées immédiatement dans le workspace.</p>

<p>L'éditeur de variables supporte les scalaires, vecteurs, matrices, chaînes, cellules, tables et structures. Les tableaux multidimensionnels peuvent être visualisés mais leur édition peut être limitée.</p>

<p>Vous pouvez également ouvrir une variable en double-cliquant dessus dans le panneau Variables.</p>

<p>L'éditeur se synchronise automatiquement avec le workspace courant.</p>

<p>Contenu éditable : dans les structures (struct), cellules (cell) et tables (table), seuls les éléments scalaires sont éditables.</p>

<p>Nelson offre une intégration complète du presse-papiers avec des tableurs tels que Microsoft Excel, LibreOffice Calc et OpenOffice Calc.</p>

<p>Vous pouvez copier des variables depuis l'éditeur de variables et les coller directement dans ces applications, et inversement.</p>

<p></p>

## Exemple

```matlab
A = [1 2 3; 4 5 6]; openvar("A");
```

## Voir aussi

[workspace](../gui/workspace.md), [filebrowser](../gui/filebrowser.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.15.0  | version initiale |

## Auteur

Allan CORNET
