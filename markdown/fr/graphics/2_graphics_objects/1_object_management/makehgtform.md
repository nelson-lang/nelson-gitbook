# makehgtform

Crée une matrice de transformation 4 par 4.

## 📝 Syntaxe

- M = makehgtform()
- M = makehgtform('translate', [tx ty tz])
- M = makehgtform('scale', s)
- M = makehgtform('xrotate', r)
- M = makehgtform('yrotate', r)
- M = makehgtform('zrotate', r)
- M = makehgtform(transform1, value1, transform2, value2, ...)

## 📥 Argument d'entrée

- 'translate' - un vecteur à trois éléments [tx ty tz] : une translation.
- 'scale' - un scalaire ou un vecteur à trois éléments : une mise à l'échelle uniforme ou par axe.
- 'xrotate', 'yrotate', 'zrotate' - un angle scalaire en radians : une rotation autour de cet axe.

## 📤 Argument de sortie

- M - une matrice de transformation 4 par 4.

## 📄 Description


<b>makehgtform</b> construit une matrice de transformation 4 par 4 à partir d'une suite de translations, mises à l'échelle et rotations. Les transformations sont multipliées de gauche à droite : la première listée est donc appliquée en dernier à un point. Le résultat convient à la propriété <b>Matrix</b> d'un objet de transformation.

## 💡 Exemple



```matlab
M = makehgtform('translate', [1 0 0], 'zrotate', pi / 2)
```


## 🔗 Voir aussi

[hggroup](../../../graphics/2_graphics_objects/1_object_management/hggroup.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
