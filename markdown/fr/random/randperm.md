# randperm

Permutation aléatoire de valeurs entières.

## 📝 Syntaxe

- p = randperm(n, k)

## 📥 Argument d'entrée

- n - Nombre d'entiers dans l'intervalle d'échantillonnage (entier positif).
- k - Nombre d'entiers à sélectionner (entier positif).

## 📤 Argument de sortie

- p - un vecteur ligne.

## 📄 Description

<b>p = randperm(n)</b> renvoie un vecteur ligne contenant une permutation aléatoire de <b>1:n</b>.

## 💡 Exemple

```matlab
randperm(7)
```

## 🔗 Voir aussi

[rand](../random/rand.md).

## 🕔 Historique

| Version | 📄 Description                                                             |
| ------- | -------------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                           |
| 1.15.0  | ajout du second argument d'entrée pour le nombre d'éléments à sélectionner |

## 👤 Auteur

Allan CORNET
