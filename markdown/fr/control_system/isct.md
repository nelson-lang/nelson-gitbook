# isct

Vérifie si le modèle dynamique est en temps continu.

## Syntaxe

- res = isct(sys)

## Argument d'entrée

- sys - un modèle lti.

## Argument de sortie

- res - un logique : vrai si le modèle dynamique est en temps continu.

## Description

<p>Vérifie si le modèle dynamique est en temps continu.</p>

## Exemple

```matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys1 = ss(A, B, C, D);
isct(sys1)
sys2 = ss(A, B, C, D, 0.2);
isct(sys2)
```

## Voir aussi

[isdt](../control_system/isdt.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
