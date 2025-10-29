# sinpi

Calcule précisément sin(X \* pi).

## 📝 Syntaxe

- res = sinpi(x)

## 📥 Argument d'entrée

- x - une valeur numérique

## 📤 Argument de sortie

- res - une valeur numérique

## 📄 Description

<b>res = sinpi(x)</b> calcule <b>sin(x \* pi)</b> précisément.

Pour les entiers impairs, <b>sinpi(x / 2)</b> vaut +1 ou -1.

Pour les entiers, <b>sinpi(x)</b> est exactement zéro.

## 💡 Exemple

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = sin(x * pi)
res = sinpi(x)
```

## 🔗 Voir aussi

[sin](../trigonometric_functions/sin.md), [cospi](../trigonometric_functions/cospi.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
