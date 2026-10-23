# camorbit

Fait orbiter la position de la caméra autour de la cible.

## 📝 Syntaxe

- camorbit(dtheta, dphi)
- camorbit(dtheta, dphi, coordsys)
- camorbit(ax, ...)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- dtheta - Rotation horizontale en degrés.
- dphi - Rotation verticale en degrés.
- coordsys - 'data' (par défaut, rotation horizontale autour de l'axe z) ou 'camera' (rotation horizontale autour du vecteur vertical de la caméra).

## 📄 Description


<b>camorbit</b> fait tourner la position de la caméra autour de la cible, en conservant la distance caméra-cible constante. C'est l'équivalent programmatique de l'orbite de la scène à la souris.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
for k = 1:36
  camorbit(10, 0);
  drawnow();
end
```


## 🔗 Voir aussi

[campan](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campan.md), [camdolly](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camdolly.md), [camroll](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camroll.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
