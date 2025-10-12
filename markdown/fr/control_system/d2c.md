# d2c

Convertit un modèle du temps discret au temps continu.

## Syntaxe

- sysc = d2c(sysd)
- sysc = d2c(sysd, method)
- sysc = d2c(sysd, 'prewarp', w0)

## Argument d'entrée

- sysd - Système dynamique en temps discret : modèle LTI.
- method - Méthode de discrétisation : 'zoh', 'tustin', 'prewarp'
- w0 - fréquence de pré-distorsion.

## Argument de sortie

- sysc - modèle en temps continu

## Description

<p>La fonction sysc = d2c(sysd) transforme un modèle de système dynamique en temps discret sysd en un modèle en temps continu, en utilisant un maintien d'ordre zéro sur les entrées.</p>

<p>Par exemple, vous pouvez utiliser sysc = d2c(sysd, method) pour définir explicitement la méthode de conversion.</p>

## Exemple

```matlab
A = [0.25, 0.5; 0, 0.1];
B = [1; 0];
C = [-1, 0];
sys = ss(A, B, C, 0, 0.2);
sysc = d2c(sys, 'zoh')

```

## Voir aussi

[c2d](../control_system/c2d.md), [ss](../control_system/ss.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
