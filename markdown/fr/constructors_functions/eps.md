# eps

Crée un epsilon (précision machine)

## Syntaxe

- eps
- eps
- eps(n)
- eps(n, m)
- eps('double')
- eps('single')

## Argument d'entrée

- n - une variable : matrice n-par-n
- m - une variable : matrice n-par-m

## Description

<p>
            eps retourne la précision machine 2^(-52) pour double et 2^(-23) pour single.</p>

<p>eps(Inf), eps(-Inf) et eps(NaN) retournent NaN.</p>

## Exemples

```matlab
eps
```

```matlab
eps('double')
```

```matlab
eps('single')
```

## Voir aussi

[double](../double/double.md), [single](../single/single.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
