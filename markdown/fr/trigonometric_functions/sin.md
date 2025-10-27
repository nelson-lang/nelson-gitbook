# sin

Calcule le sinus en radians pour chaque élément de x.

## 📝 Syntaxe

- res = sin(x)

## 📥 Argument d'entrée

- x - une valeur numérique

## 📤 Argument de sortie

- res - une valeur numérique

## 📄 Description

<b>sin</b> calcule le sinus en radians pour chaque élément de <b>x</b>.

La fonction sinus est définie comme :

$$\sin(x) = \frac{e^{ix} - e^{-ix}}{2i}$$

Pour les arguments réels, elle représente la coordonnée y sur le cercle unité.

## 💡 Exemple

```matlab
A = eye(3, 3);
res = sin(A)
```

## 🔗 Voir aussi

[asin](../trigonometric_functions/asin.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
