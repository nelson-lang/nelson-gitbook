# obsvf

Calcul de la forme en escalier d'observabilité.

## 📝 Syntaxe

- [Abar, Bbar, Cbar, T, k] = obsvf(A, B, C)
- [Abar, Bbar, Cbar, T, k] = obsvf(A, B, C, tol)

## 📥 Argument d'entrée

- A - État matrice : Nx-par-Nx matrice
- B - Matrice entrée-état : Nx-par-Nu matrice
- C - Matrice sortie-état : Ny-par-Nx matrice
- tol - scalaire réel (tolérance).

## 📤 Argument de sortie

- Abar - Matrice d'état en escalier d'observabilité.
- Bbar - Matrice d'entrée en escalier d'observabilité.
- Cbar - Matrice de sortie en escalier d'observabilité.
- T - Matrice de transformation de similarité.
- k - Vecteur : nombre d'états observables.

## 📄 Description

Calcule la transformation en forme en escalier d'observabilité du système et renvoie les matrices transformées ainsi que la transformation T.

## 💡 Exemple

```matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = obsvf(A, B, C)
```

## 🔗 Voir aussi

[obsv](../control_system/obsv.md), [ctrbf](../control_system/ctrbf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
