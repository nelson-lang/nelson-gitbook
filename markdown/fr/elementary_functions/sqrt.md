# sqrt

Square root.

## Syntaxe

- R = sqrt(M)

## Argument d'entrée

- M - a variable

## Argument de sortie

- R - result of sqrt: square root.

## Description

<p>
            sqrt calcule la racine carrée.
        </p>

<p>Pour les nombres réels positifs :</p>

$$\sqrt{x}$$

<p>Pour les nombres complexes z = x + iy :</p>

$$\sqrt{z} = \sqrt{r} e^{i\phi/2}$$

<p>où</p>

$$r = |z| = \sqrt{x^2 + y^2}$$

<p>et</p>

$$\phi = \arg(z) = \text{atan2}(y, x)$$

## Exemple

```matlab
x = -3:3;
r = sqrt(x)
```

## Voir aussi

[log](../elementary_functions/log.md), [abs](../elementary_functions/abs.md), [angle](../elementary_functions/angle.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
