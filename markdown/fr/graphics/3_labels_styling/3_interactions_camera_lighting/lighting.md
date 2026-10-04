# lighting

Definit le mode d'eclairage des surfaces et patchs.

## 📝 Syntaxe

- lighting(type)
- lighting(ax, type)

## 📥 Argument d'entrée

- ax - Axes cible.
- type - <b>none</b>, <b>flat</b> ou <b>gouraud</b>.

## 📄 Description

<b>lighting</b> definit <b>FaceLighting</b> et <b>EdgeLighting</b> pour les surfaces et patchs des axes.

## 💡 Exemple

```matlab

surf(peaks(30), 'EdgeColor', 'none');
light();
lighting gouraud;

```

<img src="lighting_1.svg" align="middle"/>

## 🔗 Voir aussi

[light](../../../graphics/3_labels_styling/3_interactions_camera_lighting/light.md), [material](../../../graphics/3_labels_styling/3_interactions_camera_lighting/material.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
