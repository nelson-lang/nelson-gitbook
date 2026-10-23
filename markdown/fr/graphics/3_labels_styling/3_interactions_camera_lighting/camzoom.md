# camzoom

Zoome la caméra en avant ou en arrière.

## 📝 Syntaxe

- camzoom(zf)
- camzoom(ax, zf)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- zf - Le facteur de zoom, un scalaire réel positif. Une valeur supérieure à 1 zoome en avant, une valeur inférieure à 1 zoome en arrière.

## 📄 Description


<b>camzoom</b> zoome la caméra en divisant la tangente de la moitié de <b>CameraViewAngle</b> par le facteur de zoom, la scène apparaît donc <b>zf</b>fois plus grande, et bascule <b>CameraViewAngleMode</b> en <b>manual</b>.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camzoom(2);
```


## 🔗 Voir aussi

[camva](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camva.md), [camdolly](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camdolly.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
