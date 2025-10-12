# maxNumCompThreads

Nombre maximal de threads de calcul.

## Syntaxe

- T = maxNumCompThreads()
- PREVIOUS_T = maxNumCompThreads(T)
- PREVIOUS_T = maxNumCompThreads('automatic')

## Argument d'entrée

- T - une valeur entière : nombre de threads utilisés par Nelson pour les calculs.

## Argument de sortie

- T - une valeur entière : nombre de threads utilisés par Nelson pour les calculs.
- PREVIOUS_T - une valeur entière : nombre précédent de threads utilisés par Nelson pour les calculs.

## Description

<p>Retourne ou définit le nombre maximal de threads que Nelson peut utiliser pour le calcul parallèle.</p>

## Exemple

```matlab
maxNumCompThreads
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
