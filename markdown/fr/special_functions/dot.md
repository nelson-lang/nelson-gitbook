# dot

Produit scalaire.

## Syntaxe

- R = dot(A, B)
- R = dot(A, B, dim)

## Argument d'entrée

- A, B - tableaux numériques.
- dim - scalaire entier positif : Dimension le long de laquelle opérer.

## Argument de sortie

- R - Produit scalaire.

## Description

<p>
            R = dot(A, B) retourne le produit scalaire de A et B.
        </p>

<p>Pour les vecteurs réels</p>

$$\mathbf{a}$$

<p>et</p>

$$\mathbf{b}$$

<p>de longueur</p>

$$n$$

<p>:</p>

$$\mathbf{a} \cdot \mathbf{b} = \sum_{i=1}^{n} a_i b_i = a_1 b_1 + a_2 b_2 + \cdots + a_n b_n$$

<p>Pour les vecteurs complexes, le produit scalaire est :</p>

$$\mathbf{a} \cdot \mathbf{b} = \sum_{i=1}^{n} \overline{a_i} b_i$$

<p>où</p>

$$\overline{a_i}$$

<p>dénote le conjugué complexe de</p>

$$a_i$$

## Bibliographie

https://en.wikipedia.org/wiki/Dot_product

## Exemple

```matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = dot(A, B)
R = dot(A, B, 2)
```

## Voir aussi

[conj](../elementary_functions/conj.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
