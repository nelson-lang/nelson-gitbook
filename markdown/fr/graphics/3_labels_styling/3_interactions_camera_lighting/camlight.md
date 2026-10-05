# camlight

Cree ou positionne une lumiere par rapport a la camera.

## 📝 Syntaxe

- camlight()
- camlight('headlight')
- camlight('left')
- camlight('right')
- camlight(az, el)
- go = camlight(...)

## 📄 Description


<b>camlight</b> place une lumiere infinie depuis la camera courante ou une position angulaire.

## 💡 Exemple



```matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
camlight('headlight');
material('shiny');
view(35, 28);

```
<img src="camlight_1.svg" align="middle"/>


## 🔗 Voir aussi

[light](../../../graphics/3_labels_styling/3_interactions_camera_lighting/light.md), [lightangle](../../../graphics/3_labels_styling/3_interactions_camera_lighting/lightangle.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
