# ctrbf

Calcule la forme escalier de contrôlabilité.

## 📝 Syntaxe

- [Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
- [Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C, tol)

## 📥 Argument d'entrée

- A - Matrice d'état : matrice Nx-par-Nx
- B - Matrice entrée-état : matrice Nx-par-Nu
- C - Matrice sortie-état : matrice Ny-par-Nx
- tol - scalaire réel (tolérance).

## 📤 Argument de sortie

- Abar - Matrice d'état de la forme escalier de contrôlabilité.
- Bbar - Matrice d'entrée de la forme escalier de contrôlabilité.
- Cbar - Matrice de sortie de la forme escalier de contrôlabilité.
- T - Matrice de transformation de similarité.
- k - Vecteur : nombre d'états contrôlables.

## 📄 Description

<b>ctrbf(A, B, C)</b> décompose le système d'espace d'état donné, défini par les matrices <b>A</b>, <b>B</b> et <b>C</b>, en forme escalier de contrôlabilité.

Cela produit les matrices transformées <b>Abar</b>,<b>Bbar</b> et <b>Cbar</b>, ainsi qu'une matrice de transformation de similarité <b>T</b> et un vecteur <b>k</b>.

La longueur du vecteur <b>k</b> est égale à l'ordre du système représenté par <b>A</b>, et chaque entrée dans <b>k</b> désigne le nombre d'états contrôlables factorisés à chaque étape du calcul de la matrice de transformation.

Les éléments non nuls dans <b>k</b> indiquent le nombre d'itérations requises pour le calcul de <b>T</b> , et la somme de <b>k</b> correspond au nombre d'états dans <b>Ac</b>, la portion contrôlable de <b>Abar</b>.

## 💡 Exemple

```matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
```

## 🔗 Voir aussi

[ctrb](../control_system/ctrb.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
