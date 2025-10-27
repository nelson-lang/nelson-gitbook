# openvar

Ouvre une variable dans l'éditeur de variables

## 📝 Syntaxe

- openvar(varname)

## 📥 Argument d'entrée

- varname: a string or row vector characters - Name of the variable to open. Must exist in the current workspace.

## 📄 Description

<b>openvar(varname)</b> ouvre la variable nommée <b>varname</b> dans l'éditeur de variables de Nelson pour inspection et édition graphique.

Toutes les modifications effectuées dans l'éditeur sont appliquées immédiatement dans le workspace.

L'éditeur de variables supporte les scalaires, vecteurs, matrices, chaînes, cellules, tables et structures. Les tableaux multidimensionnels peuvent être visualisés mais leur édition peut être limitée.

Vous pouvez également ouvrir une variable en double-cliquant dessus dans le panneau Variables.

L'éditeur se synchronise automatiquement avec le workspace courant.

Contenu éditable : dans les structures (struct), cellules (cell) et tables (table), seuls les éléments scalaires sont éditables.

Nelson offre une intégration complète du presse-papiers avec des tableurs tels que <b>Microsoft Excel</b>, <b>LibreOffice Calc</b> et <b>OpenOffice Calc</b>.

Vous pouvez copier des variables depuis l'éditeur de variables et les coller directement dans ces applications, et inversement.

<img src="openvar.png" align="middle"/>

## 💡 Exemple

```matlab
A = [1 2 3; 4 5 6]; openvar("A");
```

## 🔗 Voir aussi

[workspace](../gui/workspace.md), [filebrowser](../gui/filebrowser.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

## 👤 Auteur

Allan CORNET
