# tril

Partie triangulaire inférieure d'une matrice

## 📝 Syntaxe

- T = tril(M)
- T = tril(M, k)

## 📥 Argument d'entrée

- M - matrice d'entrée 2D
- k - diagonales à inclure : valeur entière réelle

## 📤 Argument de sortie

- R - partie triangulaire inférieure de la matrice

## 📄 Description


<b>tril</b> calcule la partie triangulaire inférieure d'une matrice. 

<b>R = tril(M, k)</b> renvoie les éléments situés sur et au-dessous de la k-ième diagonale de M. 

Les matrices sparse single et sparse single complexes sont prises en charge. Le resultat conserve le stockage sparse et la precision de l'entree.

## 💡 Exemples



```matlab
x = [1+i,-i;i,2i];
r = tril(x)
```
Partie triangulaire inferieure sparse single.

```matlab
S = sparse(single([1 2; 3 4]));
R = tril(S)
```


## 🔗 Voir aussi

[diag](../../constructors_functions/diag.md), [triu](../../elementary_functions/7_indexing_dimensions/triu.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | prise en charge des matrices sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
