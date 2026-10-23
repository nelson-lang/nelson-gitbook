# isappdata

Vrai si des données applicatives existent.

## 📝 Syntaxe

- tf = isappdata(h, name)

## 📥 Argument d'entrée

- h - un objet graphique.
- name - une chaîne : le nom de la donnée.

## 📤 Argument de sortie

- tf - vrai si la donnée nommée est stockée sur h.

## 📄 Description


<b>isappdata</b> renvoie vrai lorsqu'une donnée applicative nommée <b>name</b> existe sur <b>h</b>.

## 💡 Exemple



```matlab
f = figure();
setappdata(gca, 'state', 42);
isappdata(gca, 'state')
```


## 🔗 Voir aussi

[setappdata](../../../graphics/2_graphics_objects/1_object_management/setappdata.md), [getappdata](../../../graphics/2_graphics_objects/1_object_management/getappdata.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
