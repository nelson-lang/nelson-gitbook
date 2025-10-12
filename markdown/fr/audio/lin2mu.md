# lin2mu

Convertir les données audio d'un signal linéaire vers mu-law.

## Syntaxe

- mu = lin2mu(y)

## Argument d'entrée

- y - signal linéaire avec -1 ≤ y ≤ 1.

## Argument de sortie

- mu - signaux audio encodés en mu-law 8 bits, avec 0 ≤ mu ≤ 255.

## Description

<p>
            mu = lin2mu(y) convertit les données audio du linéaire vers mu-law.</p>

## Bibliographie

https://en.wikipedia.org/wiki/%CE%9C-law_algorithm

## Exemple

```matlab
mu = lin2mu([-1:0.5:1])
```

## Voir aussi

[audioplayer](../audio/audioplayer.md), [mu2lin](../audio/mu2lin.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
