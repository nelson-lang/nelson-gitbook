# getappdata

Récupère des données applicatives d'un objet.

## 📝 Syntaxe

- value = getappdata(h, name)
- s = getappdata(h)

## 📥 Argument d'entrée

- h - un objet graphique.
- name - une chaîne : le nom de la donnée.

## 📤 Argument de sortie

- value - la valeur stockée, ou [] si le nom n'est pas défini.
- s - une structure de toutes les données applicatives si aucun nom n'est donné.

## 📄 Description


<b>getappdata</b> renvoie la donnée applicative nommée <b>name</b> stockée sur <b>h</b>, ou l'ensemble sous forme de structure si <b>name</b> est omis.

## 💡 Exemple



```matlab
f = figure();
setappdata(gca, 'state', 42);
getappdata(gca, 'state')
```


## 🔗 Voir aussi

[setappdata](../../../graphics/2_graphics_objects/1_object_management/setappdata.md), [isappdata](../../../graphics/2_graphics_objects/1_object_management/isappdata.md), [rmappdata](../../../graphics/2_graphics_objects/1_object_management/rmappdata.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
