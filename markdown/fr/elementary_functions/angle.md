# angle

Angle de phase

## Syntaxe

- R = angle(Z)

## Argument d'entrée

- Z - une variable (double, single, complex)

## Argument de sortie

- R - résultat de la fonction angle.

## Description

<p>
            angle calcule l'angle de phase, équivalent à atan2(imag(Z), real(Z)).</p>

## Exemple

```matlab
x = [1+i,-i;i,2i];
r = angle(x)
```

## Voir aussi

[atan2](../trigonometric_functions/atan2.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
