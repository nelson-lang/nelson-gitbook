# condeig

Nombre de condition relatif aux valeurs propres.

## 📝 Syntaxe

- C = condeig(A)
- [V, D, S] = condeig(A)

## 📥 Argument d'entrée

- A - matrice d'entrée

## 📤 Argument de sortie

- C - a vector of condition numbers for the eigenvalues of A.

## 📄 Description

<b>C = condeig(A)</b> retourne un vecteur de nombres de condition pour les valeurs propres de <b>A</b>.

## 💡 Exemple

```matlab
A = [10, 20; 30, 40];
S = condeig(A)
```

## 🔗 Voir aussi

[eig](../linear_algebra/eig.md), [cond](../linear_algebra/cond.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
