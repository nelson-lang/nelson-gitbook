# gram

Matrices de Gram d'un système.

## Syntaxe

- wc = gram(sys, 'o')
- wc = gram(sys, 'c')

## Argument d'entrée

- sys - modèle d'état-espace.

## Argument de sortie

- wc - matrice de Gram d'observabilité ou de contrôlabilité.

## Description

<p>Calcule les matrices de Gram pour l'observabilité ou la contrôlabilité d'un système d'état.</p>

## Exemple

```matlab
sys = ss([-.1 -1;1 0], [1;0], [0 1], 0);
wc = gram(sys, 'c')
wc = gram(sys, 'o')

```

## Voir aussi

[lyap](../control_system/lyap.md), [dlyap](../control_system/dlyap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
