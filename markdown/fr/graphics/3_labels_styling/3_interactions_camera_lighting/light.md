# light

Cree un objet lumiere dans des axes.

## 📝 Syntaxe

- light()
- light(ax, ...)
- light(..., propertyName, propertyValue)
- go = light(...)

## 📥 Argument d'entrée

- ax - Axes cible.
- propertyName - Nom de propriete de light.
- propertyValue - Valeur de propriete de light.

## 📤 Argument de sortie

- go - Un objet graphique : type light.

## 📄 Description


<b>light</b> cree une lumiere qui agit sur les surfaces et les patchs du meme axe lorsque leur eclairage est actif. 

Voir [proprietes de light](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.light.properties.md) pour la liste complete des proprietes.

## 💡 Exemple



```matlab

f = figure();
surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
light('Position', [1 -1 1]);
material('shiny');
view(35, 28);

```
<img src="light_1.svg" align="middle"/>


## 🔗 Voir aussi

[proprietes de light](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.light.properties.md), [lighting](../../../graphics/3_labels_styling/3_interactions_camera_lighting/lighting.md), [material](../../../graphics/3_labels_styling/3_interactions_camera_lighting/material.md), [surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
