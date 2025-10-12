# intmin

Renvoie le plus petit entier pouvant être représenté pour un type entier.

## Syntaxe

- imin = intmin()
- imin = intmin(classname)

## Argument d'entrée

- classname - une chaîne : par défaut : int32

## Argument de sortie

- imin - le plus petit entier

## Description

<p>
            imin = intmin(classname)le plus petit entier pouvant être représenté pour un type entier.</p>

<p>Les valeurs prises en charge pour la chaîne classname sont :</p>

<p>'int8'</p>

<p>'uint8'</p>

<p>'int16'</p>

<p>'uint16'</p>

<p>'int32'</p>

<p>'uint32'</p>

<p>'int64'</p>

<p>'uint64'</p>

## Exemples

```matlab
A = intmin('int64')
res = class(A)
```

```matlab
A = intmin('uint32')
res = class(C)
```

## Voir aussi

[intmax](../integer/intmax.md), [class](../type/class.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
