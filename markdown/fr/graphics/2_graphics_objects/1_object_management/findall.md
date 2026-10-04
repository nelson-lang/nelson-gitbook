# findall

Trouve des objets graphiques, y compris les handles caches.

## 📝 Syntaxe

- h = findall()
- h = findall(prop, value)
- h = findall(objhandles, prop, value)
- h = findall(objhandles, 'flat', ...)
- h = findall(objhandles, '-depth', d, ...)

## 📥 Argument d'entrée

- objhandles - objet graphique ou tableau d'objets graphiques depuis lesquels chercher.
- prop - nom de propriete sous forme de vecteur de caracteres ou chaine scalaire.
- value - valeur de propriete a rechercher.
- d - profondeur de recherche, entiere positive ou nulle, ou Inf.

## 📤 Argument de sortie

- h - tableau colonne des objets graphiques trouves.

## 📄 Description

<b>findall</b> parcourt la hierarchie graphique comme <b>findobj</b>, mais inclut les objets dont <b>HandleVisibility</b> vaut <b>'off'</b> ou <b>'callback'</b>.

Quand la recherche demarre depuis <b>groot</b>, les figures cachees sont parcourues meme si <b>ShowHiddenHandles</b> vaut <b>'off'</b>.

## 💡 Exemple

```matlab
close all
f = figure('Visible', 'off', 'HandleVisibility', 'off', 'Tag', 'hiddenFigure');
h = findall(groot(), 'Tag', 'hiddenFigure')
```

## 🔗 Voir aussi

[findobj](../../../graphics/2_graphics_objects/1_object_management/findobj.md), [allchild](../../../graphics/2_graphics_objects/1_object_management/allchild.md), [groot](../../../graphics/2_graphics_objects/1_object_management/groot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
