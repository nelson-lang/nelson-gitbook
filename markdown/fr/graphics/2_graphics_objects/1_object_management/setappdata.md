# setappdata

Stocke des données applicatives sur un objet.

## 📝 Syntaxe

- setappdata(h, name, value)

## 📥 Argument d'entrée

- h - un objet graphique.
- name - une chaîne : le nom de la donnée.
- value - une valeur quelconque à stocker.

## 📄 Description


<b>setappdata</b> stocke la <b>value</b> nommée comme donnée applicative sur l'objet <b>h</b>, récupérable avec <b>getappdata</b>.

## 💡 Exemple



```matlab
f = figure();
setappdata(gca, 'state', 42);
getappdata(gca, 'state')
```


## 🔗 Voir aussi

[getappdata](../../../graphics/2_graphics_objects/1_object_management/getappdata.md), [isappdata](../../../graphics/2_graphics_objects/1_object_management/isappdata.md), [rmappdata](../../../graphics/2_graphics_objects/1_object_management/rmappdata.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
