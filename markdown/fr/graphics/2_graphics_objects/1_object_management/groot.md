# groot

Objet racine graphique.

## 📝 Syntaxe

- g = groot()

## 📤 Argument de sortie

- g - Un objet graphique : objet racine.

## 📄 Description


<b>groot</b> retourne l'objet racine graphique. 

Voir [proprietes de groot](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.groot.properties.md) pour la liste complete des proprietes.

Les valeurs par defaut racine utilisent des noms de la forme <b>Default</b><i>Objet</i><i>Propriete</i>. Par exemple, <b>set(groot(), 'DefaultFigureColormap', cmap)</b> change la colormap des nouvelles figures. Utiliser la valeur <b>'remove'</b> restaure la valeur d'usine.

## 💡 Exemple



```matlab
g = groot()
g.ScreenDepth
```


## 🔗 Voir aussi

[proprietes de groot](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.groot.properties.md), [figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
