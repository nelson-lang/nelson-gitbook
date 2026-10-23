# campan

Fait pivoter la cible de la caméra autour de la position.

## 📝 Syntaxe

- campan(dtheta, dphi)
- campan(dtheta, dphi, coordsys)
- campan(ax, ...)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- dtheta - Rotation horizontale en degrés.
- dphi - Rotation verticale en degrés.
- coordsys - 'data' (par défaut, rotation horizontale autour de l'axe z) ou 'camera' (rotation horizontale autour du vecteur vertical de la caméra).

## 📄 Description


<b>campan</b> fait tourner la cible de la caméra autour de la position de la caméra, en conservant la distance caméra-cible constante. Cela change la direction visée par la caméra sans déplacer la caméra elle-même.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
campan(10, 0);
```


## 🔗 Voir aussi

[camorbit](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camorbit.md), [camdolly](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camdolly.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
