# diag

Obtenir les éléments diagonaux d'une matrice ou créer une matrice diagonale.

## Syntaxe

- D = diag(V)
- X = diag(A)
- D = diag(V, k)
- X = diag(A, k)

## Argument d'entrée

- V - Éléments diagonaux
- A - Matrice d'entrée

## Argument de sortie

- D - vecteur
- X - matrice

## Description

<p>
            diag retourne les éléments diagonaux d'une matrice ou crée une matrice diagonale.</p>

## Exemple

```matlab
diag(eye(3))
diag(diag(eye(3)))
```

## Voir aussi

[ones](../constructors_functions/ones.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
