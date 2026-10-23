# rmappdata

Supprime des données applicatives d'un objet.

## 📝 Syntaxe

- rmappdata(h, name)

## 📥 Argument d'entrée

- h - un objet graphique.
- name - une chaîne : le nom de la donnée à supprimer.

## 📄 Description


<b>rmappdata</b> supprime la donnée applicative nommée <b>name</b> de <b>h</b>. C'est une erreur si la donnée n'existe pas.

## 💡 Exemple



```matlab
f = figure();
setappdata(gca, 'state', 42);
rmappdata(gca, 'state');
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
