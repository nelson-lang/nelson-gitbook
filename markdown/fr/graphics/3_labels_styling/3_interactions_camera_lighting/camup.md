# camup

Définit ou interroge le vecteur vertical de la caméra.

## 📝 Syntaxe

- camup
- u = camup
- camup([x y z])
- camup('auto')
- camup('manual')
- mode = camup('mode')
- camup(ax, ...)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- [x y z] - Le vecteur vertical de la caméra, spécifié comme un vecteur à trois éléments.

## 📤 Argument de sortie

- u - Le vecteur vertical actuel de la caméra, un vecteur à trois éléments.

## 📄 Description


<b>camup</b> définit ou interroge la propriété <b>CameraUpVector</b> d'un axes. 

Spécifier un vecteur vertical bascule <b>CameraUpVectorMode</b> en <b>manual</b>.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camup([0 0 1]);
u = camup()
```


## 🔗 Voir aussi

[campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md), [camroll](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camroll.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
