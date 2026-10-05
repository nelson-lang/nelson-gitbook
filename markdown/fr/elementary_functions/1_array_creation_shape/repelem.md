# repelem

Repete les elements d'un tableau.

## 📝 Syntaxe

- B = repelem(V, n)
- B = repelem(V, r)
- B = repelem(A, r, c)

## 📥 Argument d'entrée

- V - vecteur.
- A - matrice.
- n - nombre de repetitions : entier scalaire.
- r, c - nombres de repetitions : entier scalaire ou vecteur.

## 📤 Argument de sortie

- B - resultat : vecteur ou matrice.

## 📄 Description


<b>repelem(V, n)</b> repete chaque element du vecteur <b>V</b> <b>n</b> fois. 

<b>repelem(V, r)</b> utilise un vecteur <b>r</b> pour repeter l'element <b>V(i)</b> exactement <b>r(i)</b> fois. 

<b>repelem(A, r, c)</b> repete les lignes de la matrice <b>r</b> fois et les colonnes <b>c</b> fois.

## 💡 Exemple



```matlab
repelem([1 2 3], 2)
repelem([1 2 3], [1 2 3])
```


## 🔗 Voir aussi

[repmat](../1_array_creation_shape/repmat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
