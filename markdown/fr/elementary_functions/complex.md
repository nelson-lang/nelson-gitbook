# complex

Crée un nombre complexe.

## Syntaxe

- cpx = complex(a)
- cpx = complex(a, b)

## Argument d'entrée

- a - une variable : partie réelle
- b - une variable : partie imaginaire

## Argument de sortie

- cplx - résultat de a + b\*i

## Description

<p>
            complex renvoie une valeur complexe à partir d'arguments réels.</p>

<p>Avec un seul argument d'entrée, complex renvoie la valeur complexe a + 0*i.</p>

## Exemple

```matlab
z = complex(3, 2)
z2 = complex(Inf, Inf)
z3 = Inf + Inf * i
```

## Voir aussi

[real](../elementary_functions/real.md), [imag](../elementary_functions/imag.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
