# islti

Vérifie si la variable est un modèle linéaire de type tf, ss ou zpk.

## Syntaxe

- res = islti(sys)

## Argument d'entrée

- A - variable.

## Argument de sortie

- res - un booléen : vrai s'il s'agit d'un modèle linéaire.

## Description

<p>Vérifie si la variable est un modèle linéaire (tf, ss ou zpk).</p>

## Exemple

```matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys = ss(A, B, C, D);
islti(sys)
islti(A)
```

## Voir aussi

[isa](../types/isa.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
