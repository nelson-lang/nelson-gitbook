# axtoolbar

Obtient ou configure la barre d'outils des axes.

## 📝 Syntaxe

- tb = axtoolbar()
- tb = axtoolbar(buttons)
- tb = axtoolbar(ax)
- tb = axtoolbar(ax, buttons)
- tb = axtoolbar(..., name, value, ...)
- [tb, btns] = axtoolbar(...)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes. Par défaut : les axes courants.
- buttons - Un vecteur de caractères, un tableau de chaînes ou un tableau de cellules de caractères : 'default', 'export', 'brush', 'datacursor', 'rotate', 'pan', 'zoom', 'restoreview', 'zoomin' ou 'zoomout'. Les noms sont seulement validés : la barre d'outils de la figure de Nelson est partagée par tous les axes.
- name, value - Propriétés de la barre d'outils des axes, par exemple 'Visible', 'Tag', 'UserData'.

## 📤 Argument de sortie

- tb - Un objet graphique scalaire : la barre d'outils des axes.
- btns - Un tableau d'objets graphiques vide : Nelson n'a pas de boutons par axes.

## 📄 Description


<b>axtoolbar</b> renvoie l'objet <b>Toolbar</b> d'un axes et lui applique les propriétés indiquées. 

Utilisez <b>axtoolbar('Visible', 'off')</b> pour masquer la barre d'outils des axes courants. 

Si la propriété <b>Toolbar</b> de la cible a été mise à vide, appelez <b>reset</b> sur la cible pour la restaurer avant <b>axtoolbar</b>.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
tb = axtoolbar('Visible', 'off')
```


## 🔗 Voir aussi

[propriétés des axes](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.axes.properties.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
