# double

Convertit une variable au type double précision.

## Syntaxe

- D = double(V)

## Argument d'entrée

- V - une variable.

## Argument de sortie

- D - un double.

## Description

<p>
            double(V) convertit en type double précision.</p>

## Exemples

```matlab
double('Nelson')
```

```matlab
A = single(pi)
B = double(A)
B - A
```

```matlab
A = ["3.134", "NaN"; "Inf", "-5"];
B = double(A)
```

## Voir aussi

[char](../string/char.md), [single](../single/single.md), [numeric types](../interpreter/numeric_types.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
