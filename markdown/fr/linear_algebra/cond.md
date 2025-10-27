# cond

Nombre de condition pour l'inversion.

## 📝 Syntaxe

- c = rcond(A, p)

## 📥 Argument d'entrée

- A - une valeur numérique : matrice carrée ou rectangulaire (double ou simple précision)
- p - type de norme : Inf, 'fro', 1, 2 (par défaut)

## 📤 Argument de sortie

- c - une valeur numérique : un scalaire.

## 📄 Description

<b>c = cond(A)</b> retourne le nombre de condition en norme 2 pour l'inversion.

<b>c = cond(A, p)</b> retourne le nombre de condition en norme p, où p peut être 1, 2, Inf ou 'fro'.

## 💡 Exemple

```matlab
X = rand(10, 10);
r = cond(X)
```

## 🔗 Voir aussi

[rcond](../linear_algebra/rcond.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
