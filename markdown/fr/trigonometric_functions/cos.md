# cos

Calcule le cosinus en radians pour chaque élément de x.

## 📝 Syntaxe

- res = cos(x)

## 📥 Argument d'entrée

- x - une valeur numérique

## 📤 Argument de sortie

- res - une valeur numérique

## 📄 Description

<b>cos</b> calcule le cosinus en radians pour chaque élément de <b>x</b>.

La fonction cosinus est définie comme :
$$\cos(x) = \frac{e^{ix} + e^{-ix}}{2}$$

Pour les arguments réels, elle représente la coordonnée x sur le cercle unité.

## 💡 Exemple

```matlab
A = eye(3, 3);
res = cos(A)
```

## 🔗 Voir aussi

[acos](../trigonometric_functions/acos.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
