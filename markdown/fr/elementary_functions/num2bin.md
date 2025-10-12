# num2bin

Convert number to binary representation.

## Syntaxe

- R = num2bin(M)

## Argument d'entrée

- M - a variable: logical, integer, single or double real full matrix.

## Argument de sortie

- R - result of num2bin: char array.

## Description

<p>
            num2bin returns a char array giving the literal bit representation of a number.</p>

## Bibliographie

http://www.oxfordmathcenter.com/drupal7/node/43

## Fonction(s) utilisée(s)

C++ std::bitset

## Exemple

```matlab
X = [65535 128; 1 0]
Y = num2bin(X)
```

## Voir aussi

[bin2num](../elementary_functions/bin2num.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
