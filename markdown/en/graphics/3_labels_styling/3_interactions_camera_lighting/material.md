# material

Set surface and patch material properties.

## 📝 Syntax

- material(name)
- material(ax, name)
- material(values)

## 📥 Input argument

- name - <b>default</b>, <b>shiny</b>, <b>dull</b>, or <b>metal</b>.
- values - four or five material coefficients.

## 📄 Description

<b>material</b> updates ambient, diffuse, specular, exponent, and reflectance properties on surface and patch children.

## 💡 Example

```matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
light('Position', [1 -1 1]);
lighting gouraud;
material('metal');
view(35, 28);

```

<img src="material_1.svg" align="middle"/>

## 🔗 See also

[light](../../../graphics/3_labels_styling/3_interactions_camera_lighting/light.md), [lighting](../../../graphics/3_labels_styling/3_interactions_camera_lighting/lighting.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
