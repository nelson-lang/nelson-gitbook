# sprandn

Matrice sparse aléatoire à distribution normale.

## Syntaxe

- R = sprandn(S)
- R = sprandn(m,n,density)

## Argument d'entrée

- S - Matrice d'entrée
- m - Nombre de lignes
- density - Densité des éléments non nuls

## Argument de sortie

- S - une matrice sparse.

## Description

<p>
            R = sprandn(S) crée une matrice sparse qui a le même motif de sparsité que la matrice S, mais avec des entrées aléatoires distribuées normalement.</p>

<p>
                R = sprandn(m,n,density) crée une matrice sparse aléatoire m-par-n avec approximativement density*m*n entrées non nulles distribuées normalement pour une densité dans l'intervalle [0,1].</p>

## Exemples

sprandn avec motif de matrice

```matlab
S = [1 0 0; 0 1 0; 0 0 1]; R = sprandn(S)
```

sprandn avec taille et densité

```matlab
R = sprandn(5, 5, 0.2)
```

## Voir aussi

[sprand](../sparse/sprand.md), [rng](../random/rng.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.15.0  | version initiale |

## Auteur

Allan CORNET
