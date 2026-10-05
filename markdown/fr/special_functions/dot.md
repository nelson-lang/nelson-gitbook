# dot

Produit scalaire.

## 📝 Syntaxe

- R = dot(A, B)
- R = dot(A, B, dim)

## 📥 Argument d'entrée

- A, B - tableaux numériques.
- dim - scalaire entier positif : Dimension le long de laquelle opérer.

## 📤 Argument de sortie

- R - Produit scalaire.

## 📄 Description


<b>R = dot(A, B)</b> retourne le produit scalaire de <b>A</b> et<b>B</b>. 

Pour les vecteurs réels 
$$\mathbf{a}$$
 

et 
$$\mathbf{b}$$
 

de longueur 
$$n$$
 

: 
$$\mathbf{a} \cdot \mathbf{b} = \sum_{i=1}^{n} a_i b_i = a_1 b_1 + a_2 b_2 + \cdots + a_n b_n$$
 

Pour les vecteurs complexes, le produit scalaire est : 
$$\mathbf{a} \cdot \mathbf{b} = \sum_{i=1}^{n} \overline{a_i} b_i$$
 

où 
$$\overline{a_i}$$
 

dénote le conjugué complexe de 
$$a_i$$


## 📚 Bibliographie

https://en.wikipedia.org/wiki/Dot_product

## 💡 Exemple



```matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = dot(A, B)
R = dot(A, B, 2)
```


## 🔗 Voir aussi

[conj](../elementary_functions/3_complex_numbers/conj.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
