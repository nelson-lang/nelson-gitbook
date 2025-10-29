# tan

Calcule la tangente en radians pour chaque élément de x.

## 📝 Syntaxe

- res = tan(x)

## 📥 Argument d'entrée

- x - une valeur numérique

## 📤 Argument de sortie

- res - une valeur numérique

## 📄 Description

<b>tan</b> calcule la tangente en radians pour chaque élément de <b>x</b>.

La fonction tangente est définie comme :
$$\tan(x) = \frac{\sin(x)}{\cos(x)} = \frac{e^{ix} - e^{-ix}}{i(e^{ix} + e^{-ix})}$$

Elle a des asymptotes verticales à
$$x = \frac{\pi}{2} + n\pi$$

pour les entiers <b>n</b>.

## 💡 Exemple

```matlab
A = eye(3, 3);
res = tan(A)
```

## 🔗 Voir aussi

[atan](../trigonometric_functions/atan.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
