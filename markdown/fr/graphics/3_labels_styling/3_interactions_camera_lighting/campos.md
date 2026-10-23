# campos

Définit ou interroge la position de la caméra.

## 📝 Syntaxe

- campos
- pos = campos
- campos([x y z])
- campos('auto')
- campos('manual')
- mode = campos('mode')
- campos(ax, ...)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- [x y z] - La position de la caméra, spécifiée comme un vecteur à trois éléments.

## 📤 Argument de sortie

- pos - La position actuelle de la caméra, un vecteur à trois éléments.

## 📄 Description


<b>campos</b> définit ou interroge la propriété <b>CameraPosition</b> d'un axes. 

Spécifier une position bascule <b>CameraPositionMode</b> en <b>manual</b>.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camtarget([0 0 0]);
campos([80 -120 90]);
camva(35);
```


## 🔗 Voir aussi

[camtarget](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camtarget.md), [camva](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camva.md), [camproj](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camproj.md), [view](../../../graphics/3_labels_styling/3_interactions_camera_lighting/view.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
