# rotate

Fait tourner des objets graphiques autour d'un axe.

## 📝 Syntaxe

- rotate(h, direction, alpha)
- rotate(h, direction, alpha, origin)

## 📥 Argument d'entrée

- h - un objet graphique ou un tableau d'objets avec XData/YData(/ZData).
- direction - l'axe de rotation : un vecteur à trois éléments [x y z], ou [azimut élévation] à deux éléments en degrés.
- alpha - l'angle de rotation en degrés.
- origin - le centre de rotation (par défaut : le centre de la boîte des axes).

## 📄 Description


<b>rotate</b> fait tourner les objets graphiques <b>h</b> de <b>alpha</b>degrés autour de l'axe donné par <b>direction</b>, passant par <b>origin</b>. Les données de l'objet sont transformées sur place.

## 💡 Exemple



```matlab
f = figure();
s = surf(peaks(20));
rotate(s, [0 0 1], 45);
```


## 🔗 Voir aussi

[gca](../../../graphics/2_graphics_objects/1_object_management/gca.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
