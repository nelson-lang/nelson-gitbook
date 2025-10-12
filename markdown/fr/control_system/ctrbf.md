# ctrbf

Calcule la forme escalier de contrôlabilité.

## Syntaxe

- [Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
- [Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C, tol)

## Argument d'entrée

- A - Matrice d'état : matrice Nx-par-Nx
- B - Matrice entrée-état : matrice Nx-par-Nu
- C - Matrice sortie-état : matrice Ny-par-Nx
- tol - scalaire réel (tolérance).

## Argument de sortie

- Abar - Matrice d'état de la forme escalier de contrôlabilité.
- Bbar - Matrice d'entrée de la forme escalier de contrôlabilité.
- Cbar - Matrice de sortie de la forme escalier de contrôlabilité.
- T - Matrice de transformation de similarité.
- k - Vecteur : nombre d'états contrôlables.

## Description

<p>
            ctrbf(A, B, C) décompose le système d'espace d'état donné, défini par les matrices A, B et C, en forme escalier de contrôlabilité.</p>

<p>Cela produit les matrices transformées Abar, Bbar et Cbar, ainsi qu'une matrice de transformation de similarité T et un vecteur k.</p>

<p>La longueur du vecteur k est égale à l'ordre du système représenté par A, et chaque entrée dans k désigne le nombre d'états contrôlables factorisés à chaque étape du calcul de la matrice de transformation.</p>

<p>Les éléments non nuls dans k indiquent le nombre d'itérations requises pour le calcul de T , et la somme de k correspond au nombre d'états dans Ac, la portion contrôlable de Abar.</p>

## Exemple

```matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
```

## Voir aussi

[ctrb](../control_system/ctrb.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
