# intmax

Renvoie le plus grand entier pouvant être représenté pour un type entier.

## Syntaxe

- imax = intmax()
- imax = intmax(classname)

## Argument d'entrée

- classname - une chaîne : par défaut : int32

## Argument de sortie

- imax - le plus grand entier

## Description

<p>
            imax = intmax(classname)le plus grand entier pouvant être représenté pour un type entier.</p>

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
A = intmax('int64')
res = class(A)
```

```matlab
A = intmax('uint32')
res = class(C)
```

## Voir aussi

[intmin](../integer/intmin.md), [class](../type/class.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
