# dec2base

Convertit un nombre décimal vers une autre base.

## Syntaxe

- R = dec2base(D, B)
- R = dec2base(D, B, N)

## Argument d'entrée

- D - un entier non négatif inférieur à la valeur retournée par flintmax.
- B - un entier : [2, 36].
- N - un entier : nombre de chiffres.

## Argument de sortie

- R - résultat de dec2base : tableau de caractères.

## Description

<p>
            dec2base convertit un nombre décimal vers une autre base.</p>

<p>Des valeurs sont mises en cache pour accélérer les calculs ultérieurs ; utiliser dec2base([], 2) pour vider le cache.</p>

## Exemple

```matlab
X = [65535 128; 1 0]
Y = dec2base(X, 2)
Y = dec2base(X, 2, 26)

```

## Voir aussi

[base2dec](../elementary_functions/base2dec.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
