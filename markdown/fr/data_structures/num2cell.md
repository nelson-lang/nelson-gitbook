# num2cell

Convertir un tableau en tableau cellulaire avec des cellules de tailles cohérentes.

## Syntaxe

- C = num2cell(A)
- C = num2cell(A, dim)

## Argument d'entrée

- A - n'importe quel type de tableau multidimensionnel.
- dim - entier positif ou vecteur d'entiers positifs.

## Argument de sortie

- C - un tableau cellulaire.

## Description

<p>
        num2cell convertit un tableau numérique en un tableau cellulaire, où chaque élément du tableau numérique est placé dans sa propre cellule du tableau résultant.</p>

<p>Si A est un tableau de caractères, num2cell convertira chaque ligne du tableau en une cellule distincte du tableau résultant.</p>

## Exemple

```matlab
A = [1 2; 3 4; 5 6];
C = num2cell(A)
C = num2cell(A, 1)
C = num2cell(A, 2)

```

## Voir aussi

[cell](../data_structures/cell.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
