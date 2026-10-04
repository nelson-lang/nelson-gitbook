# nchoosek

Coefficient binomial ou combinaisons.

## 📝 Syntaxe

- c = nchoosek(n, k)
- C = nchoosek(v, k)

## 📥 Argument d'entrée

- n - scalaire entier positif ou nul : nombre de choix disponibles.
- v - vecteur contenant les elements disponibles.
- k - scalaire entier positif ou nul : nombre d'elements selectionnes.

## 📤 Argument de sortie

- c - coefficient binomial lorsque la premiere entree est un scalaire.
- C - matrice dont les lignes contiennent les combinaisons de k elements de v.

## 📄 Description

nchoosek(n, k) renvoie le coefficient binomial pour un scalaire entier positif ou nul n.

nchoosek(v, k) renvoie une matrice contenant toutes les combinaisons de k elements du vecteur v.

## Fonction(s) utilisée(s)

    factorial

## 💡 Exemple

Calculer un coefficient binomial et toutes les combinaisons de deux elements d'un vecteur.

```matlab
b = nchoosek(5, 2)
C = nchoosek([10 20 30 40], 2)
```

## 🔗 Voir aussi

[factorial](../../elementary_functions/factorial.md), [prod](../../data_analysis/prod.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
