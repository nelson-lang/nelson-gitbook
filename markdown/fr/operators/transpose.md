# transpose

Retourne la transposée d'un vecteur ou d'une matrice : opérateur .'

## Syntaxe

- C= transpose(A)
- C = A .'

## Argument d'entrée

- A - une variable

## Argument de sortie

- C - résultat : transposée de A.

## Description

<p>
            C = transpose(A) retourne la transposée de A.</p>

## Exemples

```matlab
A = 3
    B = A.'
```

```matlab
A = -i
    B = A.'
```

```matlab
 A = sparse(eye(3, 4) * i)
    B = A.'
```

## Voir aussi

[ctranspose](../operators/ctranspose.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
