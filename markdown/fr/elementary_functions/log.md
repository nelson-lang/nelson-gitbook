# log

Natural logarithm.

## Syntaxe

- R = log(M)

## Argument d'entrée

- M - a variable

## Argument de sortie

- R - result of log: Natural logarithm.

## Description

<p>
            log calcule le logarithme naturel.
        </p>

<p>Pour les nombres réels positifs :</p>

$$\ln(x)$$

<p>Pour les nombres complexes z :</p>

$$\ln(z) = \ln|z| + i\arg(z)$$

<p>où</p>

$$|z|$$

<p>est le module et</p>

$$\arg(z)$$

<p>est l'argument de z.</p>

## Exemple

```matlab
x = [1+i,-i;i,2i];
r = log(x)
```

## Voir aussi

[exp](../elementary_functions/exp.md), [abs](../elementary_functions/abs.md), [angle](../elementary_functions/angle.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
