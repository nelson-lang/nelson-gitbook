# camva

Définit ou interroge l'angle de vue de la caméra.

## 📝 Syntaxe

- camva
- a = camva
- camva(angle)
- camva('auto')
- camva('manual')
- mode = camva('mode')
- camva(ax, ...)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- angle - L'angle de vue de la caméra en degrés, un scalaire réel dans l'intervalle (0, 180).

## 📤 Argument de sortie

- a - L'angle de vue actuel de la caméra en degrés.

## 📄 Description


<b>camva</b> définit ou interroge la propriété <b>CameraViewAngle</b> d'un axes. 

L'angle de vue est le champ de vision de la caméra : un angle plus grand fait paraître la scène plus petite. Avec une projection en perspective, il contrôle l'intensité de l'effet de perspective. Spécifier un angle bascule <b>CameraViewAngleMode</b> en <b>manual</b>.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camva(30);
```


## 🔗 Voir aussi

[campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md), [camzoom](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camzoom.md), [camproj](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camproj.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
