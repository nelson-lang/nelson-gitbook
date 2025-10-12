# balreal

Équilibrage basé sur le Gramien des réalisations d'espace d'état.

## Syntaxe

- [sysb, g] = balreal(sys)
- [sysb, g, T, Ti] = balreal(sys)

## Argument d'entrée

- sys - Modèle LTI.

## Argument de sortie

- sysb - Modèle LTI.
- g - Vecteur diagonal de la matrice de Gramien équilibrée.
- T - Matrice de transformation de similarité d'état.
- Ti - Matrice inverse de la transformation de similarité d'état.

## Description

<p>
            balreal(sys) calculates a balanced realization, denoted as sysb, for the stable segment of the linear time-invariant (LTI) model sys.</p>

<p>Ce processus s'applique aussi bien aux systèmes continus que discrets. Si sys n'est pas initialement sous forme d'espace d'état, la fonction le convertit automatiquement en espace d'état à l'aide de ss avant de procéder à l'équilibrage.</p>

## Exemple

```matlab
sys = ss([-1, 0; 0.1, -3], [1, 0]', [0, 1], 0);
[sysb, g, T, Ti] = balreal(sys)

```

## Voir aussi

[gram](../control_system/gram.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
