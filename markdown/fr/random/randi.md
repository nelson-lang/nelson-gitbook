# randi

Entier aléatoire.

## Syntaxe

- X = randi(imax)
- X = randi(imax, n)
- X = randi(imax, sz)
- X = randi(imax, ..., typename)
- X = randi(imax, ..., 'like', p)
- X = randi([imin, imax], ...)

## Argument d'entrée

- imax - Valeur entière maximale (incluse).
- imin - Valeur entière minimale (incluse).
- n - Génère une matrice n-par-n.
- sz - Vecteur de taille spécifiant la taille du tableau de sortie.
- typename - Type de données de sortie : "single", "double", "int8", "uint8", "int16", "uint16", "int32", "uint32" ou "logical".
- p - Tableau dont le type et la complexité sont utilisés pour la sortie.

## Argument de sortie

- X - Tableau d'entiers aléatoires.

## Description

<p>
        randi renvoie des entiers aléatoires tirés d'une distribution uniforme discrète.</p>

<p>X = randi(imax) renvoie un entier scalaire aléatoire entre 1 et imax.</p>

<p>X = randi(imax, n) renvoie une matrice n-par-n d'entiers aléatoires entre 1 et imax.</p>

<p>X = randi(imax, sz) renvoie un tableau dont le vecteur de taille sz définit size(X).</p>

<p>X = randi(imax, ..., typename) renvoie un tableau d'entiers aléatoires du type typename.</p>

<p>X = randi(imax, ..., 'like', p) renvoie un tableau d'entiers aléatoires similaire à p (même type et complexité).</p>

<p>X = randi([imin, imax], ...) renvoie des entiers aléatoires entre imin et imax.</p>

## Exemples

```matlab

X = randi(10)

```

```matlab

X = randi(10, 3, 4)

```

```matlab

X = randi(10, [3 4])

```

```matlab

X = randi(10, 3, 4, 'int32')

```

```matlab

p = single([3 3]);
X = randi(10, 3, 3, 'like', p)

```

```matlab

X = randi([5, 15], 2, 3)

```

## Voir aussi

[rng](../random/rng.md), [rand](../random/rand.md), [randn](../random/randn.md), [eye](../constructors_functions/eye.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.15.0  | version initiale |

## Auteur

Allan CORNET
