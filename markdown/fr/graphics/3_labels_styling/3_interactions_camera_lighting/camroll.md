# camroll

Fait rouler la caméra autour de l'axe de visée.

## 📝 Syntaxe

- camroll(dtheta)
- camroll(ax, dtheta)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- dtheta - L'angle de roulis en degrés.

## 📄 Description


<b>camroll</b> fait tourner le <b>CameraUpVector</b> autour de la droite joignant la position et la cible de la caméra, faisant rouler la vue de l'angle indiqué.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camroll(30);
```


## 🔗 Voir aussi

[camup](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camup.md), [camorbit](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camorbit.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
