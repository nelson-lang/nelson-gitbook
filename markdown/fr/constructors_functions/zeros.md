# zeros

Crée une matrice composée de zéros.

## Syntaxe

- R = zeros
- R = zeros(n)
- R = zeros(n, m)
- R = zeros(n, m, ..., z)
- R = zeros(n, m, ..., z, 'like', V)
- R = zeros(n, m, ..., z, classname)

## Argument d'entrée

- n - une variable
- m - une variable

## Description

<p>
            zeros retourne une matrice composée de zéros.</p>

## Exemples

```matlab
zeros(3, 2)
```

```matlab
zeros(3, 1, 3, 'single')
```

```matlab
A = single([3 3])
B = zeros(2, 4, 'like', A)
```

```matlab
tic(); single(1) * zeros(1000); toc()
tic();zeros(1000, 'single'); toc()
```

## Voir aussi

[eye](../constructors_functions/eye.md), [ones](../constructors_functions/ones.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
