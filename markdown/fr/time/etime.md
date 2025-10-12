# etime

Time elapsed between date vectors.

## Syntaxe

- e = etime(t2, t1)

## Argument d'entrée

- t2 - vecteurs de date : vecteur 1x6 ou matrice m-by-6.
- t1 - vecteurs de date : vecteur 1x6 ou matrice m-by-6.

## Argument de sortie

- e - un scalaire ou un vecteur : temps écoulé (secondes).

## Description

<p>
            e = etime(t2, t1) returns the number of seconds between two date vectors or matrices of date vectors, t1 and t2.</p>

## Exemple

```matlab
t1 = clock()
sleep(6)
t2 = clock()
etime(t2, t1)
```

## Voir aussi

[tic](../time/tic.md), [toc](../time/toc.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
