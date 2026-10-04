# rcond

Nombre de condition inverse.

## 📝 Syntaxe

- res = rcond(x)

## 📥 Argument d'entrée

- x - une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

## 📤 Argument de sortie

- res - une valeur numérique : un scalaire.

## 📄 Description

<b>rcond(x)</b> calcule le réciproque du nombre de condition de x en norme 1.

## 💡 Exemple

```matlab
X = rand(10, 10);
r = rcond(X);
```

## 🔗 Voir aussi

[inv](../../linear_algebra/inv.md), [cond](../../linear_algebra/cond.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
