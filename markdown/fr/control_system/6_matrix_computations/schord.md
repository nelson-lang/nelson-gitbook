# schord

Ordonne une decomposition de Schur.

## 📝 Syntaxe

- [Qo, To] = schord(Qi, Ti, index)

## 📥 Argument d'entrée

- Qi - matrice de vecteurs de Schur orthogonale ou unitaire.
- Ti - matrice de Schur triangulaire superieure.
- index - cles d'ordre pour les entrees diagonales.

## 📤 Argument de sortie

- Qo - matrice de vecteurs de Schur ordonnee.
- To - matrice de Schur ordonnee.

## 📄 Description

<b>schord</b> applique des rotations unitaires adjacentes pour ordonner une decomposition de Schur selon les valeurs croissantes de <b>index</b>.

## 💡 Exemple

```matlab

A = [1 2; 3 4];
[Q, T] = schur(A);
[Qo, To] = schord(Q, T, [2 1])

```

## 🔗 Voir aussi

[schur](../../linear_algebra/schur.md), [bdschur](../../control_system/bdschur.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
