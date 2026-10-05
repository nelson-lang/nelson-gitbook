# allchild

Retourne tous les enfants directs d'objets graphiques.

## 📝 Syntaxe

- h = allchild(objhandles)

## 📥 Argument d'entrée

- objhandles - objet graphique ou tableau d'objets graphiques.

## 📤 Argument de sortie

- h - tableau colonne contenant tous les objets graphiques enfants directs.

## 📄 Description


<b>allchild</b> retourne les enfants directs quelle que soit la valeur de <b>HandleVisibility</b>. 

Pour <b>groot</b>, il retourne toutes les figures dans l'ordre des enfants de la racine, y compris les figures masquees dans la propriete <b>Children</b> lorsque <b>ShowHiddenHandles</b> vaut <b>'off'</b>.

## 💡 Exemple



```matlab
close all
f = figure('Visible', 'off');
ax = axes('Parent', f, 'HandleVisibility', 'off');
h = allchild(f)
```


## 🔗 Voir aussi

[findall](../../../graphics/2_graphics_objects/1_object_management/findall.md), [findobj](../../../graphics/2_graphics_objects/1_object_management/findobj.md), [groot](../../../graphics/2_graphics_objects/1_object_management/groot.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.17.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
