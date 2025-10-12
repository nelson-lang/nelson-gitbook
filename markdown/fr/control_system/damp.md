# damp

Fréquence naturelle et rapport d'amortissement.

## Syntaxe

- [wn, zeta] = damp(sys)
- [wn, zeta, p, T] = damp(sys)

## Argument d'entrée

- sys - Modèle LTI.

## Argument de sortie

- wn - Fréquence naturelle de chaque pôle : vecteur.
- zeta - Rapport d'amortissement de chaque pôle : vecteur.
- p - Pôles du modèle de système dynamique : vecteur.
- T - Constante de temps (secondes) : vecteur.

## Description

<p>La fonction damp(sys) fournit les fréquences naturelles (wn) et les rapports d'amortissement (zeta) associés aux pôles du système représenté par sys.</p>

## Exemple

```matlab
sys = tf([2, 5, 1], [1, 0, 2, -6]);
[wn, zeta, p, T] = damp(sys)

```

## Voir aussi

[esort](../control_system/esort.md), [pole](../control_system/pole.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
