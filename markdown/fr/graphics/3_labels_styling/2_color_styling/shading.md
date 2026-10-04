# shading

Definit le mode d'ombrage des surfaces et patchs.

## 📝 Syntaxe

- shading(type)
- shading(ax, type)

## 📥 Argument d'entrée

- ax - Axes cible.
- type - <b>faceted</b>, <b>flat</b> ou <b>interp</b>.

## 📄 Description

<b>shading</b> modifie <b>FaceColor</b> et <b>EdgeColor</b> pour les surfaces et patchs des axes.

## 💡 Exemple

```matlab

surf(peaks(20));
shading interp;

```

<img src="shading_1.svg" align="middle"/>

## 🔗 Voir aussi

[surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [lighting](../../../graphics/3_labels_styling/3_interactions_camera_lighting/lighting.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
