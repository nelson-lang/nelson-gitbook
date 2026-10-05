# maxk

k plus grands éléments d'un tableau

## 📝 Syntaxe

- B = maxk(A, k)
- [B, I] = maxk(A, k)
- B = maxk(A, k, dim)

## 📥 Argument d'entrée

- A - tableau numérique (vecteur ou matrice)
- k - entier positif spécifiant combien de plus grands éléments retourner
- dim - dimension optionnelle le long de laquelle opérer (par défaut : première dimension non singleton)

## 📤 Argument de sortie

- B - tableau contenant les k plus grands éléments de A le long de la dimension spécifiée
- I - indices des k plus grands éléments par rapport à A le long de la dimension spécifiée

## 📄 Description


<b>maxk</b> retourne les k plus grands éléments du tableau <b>A</b>. Lorsque A est un vecteur, le résultat est les k plus grandes valeurs de A. Lorsque A est une matrice, <b>maxk</b> opère le long de la dimension spécifiée (ou la première dimension non singleton par défaut) et retourne les k plus grands éléments pour chaque tranche le long de cette dimension. 

Si <b>k</b> est plus grand que le nombre d'éléments disponibles le long de la dimension d'opération, tous les éléments sont retournés (triés par ordre décroissant). Lorsqu'il est appelé comme <b>[B, I] = maxk(A, k)</b>,<b>I</b> contient les indices des éléments retournés par rapport à <b>A</b>.

## 💡 Exemples

Exemple de vecteur

```matlab

A = [5 2 4 1];
B = maxk(A, 2)   % returns [5 4]
[B, I] = maxk(A, 3) % returns [5 4 2] and indices [1 3 2]
            
```
Exemple de matrice (le long des colonnes)

```matlab

M = [4 2; 1 3];
B = maxk(M, 1)   % returns [4 3] operating along first non-singleton dimension (columns)
B = maxk(M, 2, 1) % returns 2 largest per column
            
```


## 🔗 Voir aussi

[mink](../../elementary_functions/2_elementary_math/mink.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
