# cospi

Calcule précisément cos(X \* pi).

## 📝 Syntaxe

- res = cospi(x)

## 📥 Argument d'entrée

- x - une valeur numérique

## 📤 Argument de sortie

- res - une valeur numérique

## 📄 Description

<b>res = cospi(x)</b> calcule <b>cos(x \* pi)</b> précisément.

Pour les entiers, <b>cospi(x)</b> vaut +1 ou -1.

Pour les entiers impairs, <b>cospi(x / 2)</b> est exactement zéro.

## 💡 Exemple

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = cos(x * pi)
res = cospi(x)
```

## 🔗 Voir aussi

[cos](../trigonometric_functions/cos.md), [sinpi](../trigonometric_functions/sinpi.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
