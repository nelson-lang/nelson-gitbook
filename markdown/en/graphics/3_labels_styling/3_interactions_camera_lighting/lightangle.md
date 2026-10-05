# lightangle

Create or position a light from angles.

## 📝 Syntax

- lightangle(az, el)
- lightangle(ax, az, el)
- lightangle(go, az, el)
- go = lightangle(...)

## 📄 Description


<b>lightangle</b> converts azimuth and elevation angles to a light position. If no light handle is supplied, it creates one.

## 💡 Example



```matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
lightangle(45, 30);
material('shiny');
view(35, 28);

```
<img src="lightangle_1.svg" align="middle"/>


## 🔗 See also

[light](../../../graphics/3_labels_styling/3_interactions_camera_lighting/light.md), [camlight](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camlight.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
