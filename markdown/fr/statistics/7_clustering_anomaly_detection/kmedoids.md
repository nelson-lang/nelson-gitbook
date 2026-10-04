# kmedoids

Partitionner des donnees en groupes avec des medoides.

## 📝 Syntaxe

- idx = kmedoids(X, k)
- [idx, C, sumd, D, midx, info] = kmedoids(...)

## 📄 Description

<b>kmedoids</b> groupe les lignes de X avec une boucle serie de type PAM et le generateur aleatoire de Nelson pour les depart aleatoires.

## Fonction(s) utilisée(s)

    kmeans
    pdist2
    statset
    rng

## 💡 Exemples

Classer des observations et retourner les informations de medoides.

```matlab
X = [0; 1; 10; 11];
[idx, C, sumd, D, midx, info] = kmedoids(X, 2, 'Start', [1; 3])
```

Utiliser la distance cityblock pour des observations bidimensionnelles.

```matlab
X = [0 0; 0 1; 5 5; 5 6];
[idx, C] = kmedoids(X, 2, 'Start', [0 0; 5 5], 'Distance', 'cityblock')
```
