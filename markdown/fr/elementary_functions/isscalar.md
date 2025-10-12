# isscalar

Tester si l'entrée est un scalaire

## Syntaxe

- TF = iscalar(A)

## Argument d'entrée

- A - une variable

## Argument de sortie

- res - résultat booléen

## Description

<p>
            isscalar renvoie TRUE si l'entrée est un scalaire.
        </p>

## Exemple

```matlab
x = [1+i, -i ; i, 2i];
isscalar(x)
isscalar(1)
```

## Voir aussi

[isvector](../elementary_functions/isvector.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
