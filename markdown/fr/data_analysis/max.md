# max

Valeurs maximales d'un tableau.

## 📝 Syntaxe

- M = max(A)
- [M, I] = max(A)
- M = max(A, [], dim)
- [M, I] = max(A, [], dim)
- M = max(A, [], dim, 'omitnan')
- [M, I] = max(A, [], dim, 'includenan')
- [M, I] = max(A, [], 'all')
- [M, I] = max(A, [], 'all', 'omitnan')
- [M, I] = max(A, [], 'all', 'includenan')
- C = max(A, B)
- C = max(A, B, 'omitnan')
- C = max(A, B, 'includenan')

## 📥 Argument d'entrée

- A - une variable
- dim - entier positif scalaire (dimension le long de laquelle opérer)
- 'omitnan' - ignore toutes les valeurs NaN. comportement par défaut. max renverra le premier élément si tous les éléments sont NaN.
- 'includenan' - inclut les valeurs NaN.
- 'all' - trouve le maximum sur tous les éléments.

## 📤 Argument de sortie

- M - Valeurs maximales de A.
- I - Indices des valeurs maximales de A.
- C - Éléments maximums de A ou B.

## 📄 Description


<b>max</b> trouve les valeurs maximales dans un tableau. 

Si <b>A</b> est une matrice alors <b>M = max(A)</b> est un vecteur ligne contenant la valeur maximale de chaque colonne. 

Si <b>A</b> est un vecteur alors <b>M = max(A)</b> renverra le maximum de <b>A</b>. 

Si <b>A</b> est un nombre complexe alors <b>M = max(A)</b> renverra le nombre complexe ayant la plus grande magnitude.

## 💡 Exemple



```matlab
A = [1 2 3; 4 5 6];
M = max(A)
M = max(A, [], 'all')
```


## 🔗 Voir aussi

[min](../data_analysis/min.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
