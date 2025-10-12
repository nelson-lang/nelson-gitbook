# true

Valeur logique true.

## Syntaxe

- true
- l = true(n)
- l = true(sz)
- l = true(n, m, ..., k)
- l = true(n, m, 'like', sp)

## Argument d'entrée

- n - une valeur entière.
- sz - un vecteur de taille.
- n, m, ..., k - un tableau n par m par ... par k indiquant la taille.
- sp - une structure creuse (sparse) ou un tableau.

## Argument de sortie

- l - une valeur logique : true.

## Description

<p>
            true construit une matrice de valeurs true.</p>

## Exemple

```matlab
true
true(4)
true(4, 1, 4)
L = logical(sparse(1, 2))
L2 = true(3,'like', L);
```

## Voir aussi

[false](../logical/false.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
