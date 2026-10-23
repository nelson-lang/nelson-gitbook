# camtarget

Définit ou interroge la cible de la caméra.

## 📝 Syntaxe

- camtarget
- t = camtarget
- camtarget([x y z])
- camtarget('auto')
- camtarget('manual')
- mode = camtarget('mode')
- camtarget(ax, ...)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- [x y z] - Le point visé par la caméra, spécifié comme un vecteur à trois éléments.

## 📤 Argument de sortie

- t - La cible actuelle de la caméra, un vecteur à trois éléments.

## 📄 Description


<b>camtarget</b> définit ou interroge la propriété <b>CameraTarget</b> d'un axes. 

Spécifier une cible bascule <b>CameraTargetMode</b> en <b>manual</b>.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camtarget([20 20 0]);
t = camtarget()
```


## 🔗 Voir aussi

[campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md), [camup](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camup.md), [camlookat](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camlookat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
