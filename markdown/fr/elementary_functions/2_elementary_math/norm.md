# norm

Normes de matrices et de vecteurs

## 📝 Syntaxe

- R = norm(V)
- R = norm(V, p)
- R = norm(V, 'fro')
- R = norm(M)
- R = norm(M, 1)
- R = norm(M, 2)
- R = norm(M, Inf)
- R = norm(M, 'fro')

## 📥 Argument d'entrée

- M - une matrice 2D single ou double
- V - un vecteur single ou double
- p - un scalaire (norme p)

## 📤 Argument de sortie

- R - résultat de norm : scalaire.

## 📄 Description


<b>norm</b> calcule la norme d'un vecteur ou d'une matrice. 

La norme de Frobenius de M est égale à <b>sqrt (sum (diag (M' \* M)))</b> .

## 💡 Exemples



```matlab
M = [1 2; 3 4];
norm(M)
norm(M, 1)
norm(M, 2)
norm(M, Inf)
norm(M, 'fro')
V = [1 2 3 4];
norm(V)
norm(V, 1)
norm(V, 2)
norm(V, Inf)
norm(V, 'fro')
```


```matlab
x = ones(3000, 3000);
tic();R = norm(x);toc
```


## 🔗 Voir aussi

[svd](../../linear_algebra/3_eigen_singular_values/svd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
