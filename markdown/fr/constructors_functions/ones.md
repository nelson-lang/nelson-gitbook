# ones

Crée une matrice composée de uns.

## Syntaxe

- R = ones
- R = ones(n)
- R = ones(n, m)
- R = ones(n, m, ..., z)
- R = ones(n, m, ..., z, 'like', V)
- R = ones(n, m, ..., z, classname)

## Argument d'entrée

- n - une variable : matrice n-par-n
- m - une variable : matrice n-par-m

## Description

<p>
            ones retourne une matrice composée de uns.</p>

## Exemples

```matlab
ones(3,2)
```

```matlab
ones(3,1,3,'single')
```

```matlab
A = single([3 3])
B = ones(2,4,'like', A)
```

```matlab
tic(); single(1) * ones(1000); toc()
tic();ones(1000,'single'); toc()
```

## Voir aussi

[eye](../constructors_functions/eye.md), [zeros](../constructors_functions/zeros.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
