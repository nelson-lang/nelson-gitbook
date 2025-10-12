# speye

Matrice identité sparse.

## Syntaxe

- S = speye()
- S = speye(n)
- S = speye(n, m)
- S = speye(sz)

## Argument d'entrée

- n, m - tailles de dimensions : scalaire entier non négatif.
- sz - tailles de dimensions : vecteur ligne à deux éléments.

## Argument de sortie

- S - une matrice sparse.

## Description

<p>
            S = speye() retourne un scalaire sparse 1.</p>

<p>
                S = speye(n) retourne une matrice identité sparse n-par-n, avec des uns sur la diagonale principale.</p>

<p>
                    S = speye(n, m) retourne une matrice sparse n-par-m, avec des uns sur la diagonale principale.</p>

<p>
                        S = speye(sz) retourne une matrice avec des uns sur la diagonale principale.</p>

## Exemple

```matlab

tic();S = speye(5000, 5000);toc()
tic();S = sparse(eye(5000, 5000));toc()

```

## Voir aussi

[sparse](../sparse/sparse.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
