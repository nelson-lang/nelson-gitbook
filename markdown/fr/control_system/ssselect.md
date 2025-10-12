# ssselect

Extraire un sous-système d'un système plus grand.

## Syntaxe

- sysOut = ssselect(sysIn, INPUTS, OUTPUTS)
- sysOut = ssselect(sysIn, INPUTS, OUTPUTS, STATES)

## Argument d'entrée

- sysIn - modèle d'état-espace
- INPUTS - index dans les entrées du système
- OUTPUTS - index dans les sorties du système
- STATES - états spécifiés

## Argument de sortie

- sysOut - modèle d'état-espace : sous-système d'un système plus grand.

## Description

<p>ssselect extrait un sous-système à partir d'un système plus grand.</p>

## Exemple

```matlab
A = [33,2,5; 23,200,2; 9,2,45];
B = [4,5; 12,5; 82,1];
C = [34,56,2; 6,2,112];
D = [2,0; 0,19];
sys1 = ss(A, B, C, D)
inputs = 1;
outputs = 1;

R = ssselect(sys1, inputs, outputs)


```

## Voir aussi

[ssdelete](../control_system/ssdelete.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
