# triu

Partie triangulaire supérieure d'une matrice

## 📝 Syntaxe

- T = triu(M)
- T = triu(M, k)

## 📥 Argument d'entrée

- M - matrice d'entrée 2D
- k - diagonales à inclure : valeur entière réelle

## 📤 Argument de sortie

- R - partie triangulaire supérieure de la matrice

## 📄 Description


<b>triu</b> calcule la partie triangulaire supérieure d'une matrice. 

<b>R = triu(M, k)</b> renvoie les éléments situés sur et au-dessus de la k-ième diagonale de M. 

Les matrices sparse single et sparse single complexes sont prises en charge. Le resultat conserve le stockage sparse et la precision de l'entree.

## 💡 Exemples



```matlab
x = [1+i,-i;i,2i];
r = triu(x)
```
Partie triangulaire superieure sparse single.

```matlab
S = sparse(single([1 2; 3 4]));
R = triu(S)
```


## 🔗 Voir aussi

[diag](../../constructors_functions/diag.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | prise en charge des matrices sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
