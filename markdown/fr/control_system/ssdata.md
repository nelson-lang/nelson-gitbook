# ssdata

Accède aux données d'un modèle en espace d'état.

## Syntaxe

- [A, B, C, D] = ssdata(sys)
- [A, B, C, D, Ts] = ssdata(sys)

## Argument d'entrée

- sys - LTI model.

## Argument de sortie

- A - Matrice d'état : matrice Nx par Nx.
- B - Matrice d'entrée vers l'état : matrice Nx par Nu.
- C - Matrice d'état vers sortie : matrice Ny par Nx.
- D - Matrice de passage direct : matrice Ny par Nu.
- TS - Temps d'échantillonnage : scalaire.

## Description

<p>La fonction ssdata(sys) récupère les matrices A, B, C, D du modèle d'état (tableau LTI) représenté par sys.</p>

<p>Si sys est initialement sous la forme d'une fonction de transfert ou d'un modèle zéro-pôle-gain (tableau LTI), il est automatiquement converti en représentation d'état avant l'extraction des données matricielles.</p>

## Exemple

```matlab
sysIn = ss([1 0;0 -2], [-1;0], [2 1], 0, 3.2);
[a, b, c, d, Ts] = ssdata(sysIn)
```

## Voir aussi

[tf](../control_system/tf.md), [ss](../control_system/ss.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
