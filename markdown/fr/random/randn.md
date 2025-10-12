# randn

Nombre aléatoire normalement distribué.

## Syntaxe

- M = randn
- M = randn(n)
- M = randn(x1, x2, ... , xN)
- M = randn(sz)
- M = randn(x1, x2, ... , xN, classname)
- M = randn(x1, x2, ... , xN, 'like', var)

## Argument d'entrée

- n - une variable : une matrice n-par-n sera générée.
- x1, x2, ... , xN - valeurs x1-par-...-par-xN
- classname - une chaîne : 'single' ou 'double'
- var - une variable : single ou double

## Argument de sortie

- M - une matrice de nombres aléatoires.

## Description

<p>
        randn renvoie une matrice dont les éléments sont distribués normalement avec une moyenne nulle et une variance unitaire.</p>

<p>Par défaut, randn utilise l'algorithme ziggurat.</p>

<p>La graine (seed) peut être modifiée en utilisant rng.</p>

## Exemples

```matlab
rng('default');
randn
rng('default');
randn

```

```matlab
rng('default');
randn(6)

```

```matlab
rng('default');
randn(3, 2, 3)

```

```matlab
rng('default');
randn(3, 2, 'single')

```

```matlab
rng('default');
v = single([3, 3]);
randn(3, 2, 'like', v)

```

## Voir aussi

[rng](../random/rng.md), [randn](../random/randn.md), [eye](../constructors_functions/eye.md).

## Historique

| Version | Description            |
| ------- | ---------------------- |
| 1.0.0   | version initiale       |
| 1.15.0  | Algorithme retravaillé |

## Auteur

Allan CORNET
