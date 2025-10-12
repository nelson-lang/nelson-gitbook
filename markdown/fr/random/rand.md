# rand

Nombre aléatoire.

## Syntaxe

- M = rand
- M = rand(n)
- M = rand(x1, x2, ... , xN)
- M = rand(sz)
- M = rand(x1, x2, ... , xN, classname)
- M = rand(x1, x2, ... , xN, 'like', var)

## Argument d'entrée

- n - une variable : une matrice n-par-n sera générée.
- x1, x2, ... , xN - valeurs x1-par-...-par-xN
- classname - une chaîne : 'single' ou 'double'
- var - une variable : single ou double

## Argument de sortie

- M - une matrice de nombres aléatoires.

## Description

<p>
        rand renvoie une matrice dont les éléments sont distribués uniformément sur l'intervalle [0, 1].</p>

<p>La graine (seed) peut être modifiée en utilisant rng.</p>

<p>Les concepteurs du Mersenne Twister considèrent 5489 comme graine par défaut. Nelson utilise 5489 comme graine par défaut.</p>

## Bibliographie

M. Matsumoto et T. Nishimura, Mersenne Twister: A 623-dimensionally equidistributed uniform pseudorandom number generator, ACM Trans. on Modeling and Computer Simulation Vol. 8, No. 1, pp. 3–30, January 1998

## Exemples

```matlab
rng('default');
rand
rng('default');
rand

```

```matlab
rng('default');
rand(6)

```

```matlab
rng('default');
rand(3, 2, 3)

```

```matlab
rng('default');
rand(3, 2, 'single')

```

```matlab
rng('default');
v = single([3, 3]);
rand(3, 2, 'like', v)

```

## Voir aussi

[rng](../random/rng.md), [randn](../random/randn.md), [eye](../constructors_functions/eye.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
