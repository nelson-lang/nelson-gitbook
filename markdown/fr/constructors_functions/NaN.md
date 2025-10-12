# NaN

Crée un Not-a-Number

## Syntaxe

- NaN
- nan
- NaN(n)
- NaN(n, m)

## Argument d'entrée

- n - une variable : matrice n-par-n
- m - une variable : matrice n-par-m

## Description

<p>
            NaN retourne le symbole IEEE NaN (Not a Number).</p>

<p>
                NaN est le résultat d'opérations qui ne produisent pas un résultat numérique bien défini.</p>

<p>Attention, vous ne devez jamais comparer NaN avec NaN, dans ce cas, veuillez utiliser isnan.</p>

## Exemples

```matlab
NaN
```

```matlab
3 + NaN
```

```matlab
NaN != NaN
isnan(NaN)
```

## Voir aussi

[isnan](../types/isnan.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
