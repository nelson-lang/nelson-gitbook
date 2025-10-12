# pole

Pôles d'un système dynamique.

## Syntaxe

- P = pole(sys)

## Argument d'entrée

- sys - un modèle LTI.

## Argument de sortie

- P - Pôles du système dynamique.

## Description

<p>P = pole(sys) renvoie les pôles de sys.</p>

## Exemple

```matlab
A = [-15, -20; 10, 0];
B = [5; 0];
C = [0, 10];
D = 0;
sys = ss(A, B, C, D);
P = pole(sys)
```

## Voir aussi

[zero](../control_system/zero.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
