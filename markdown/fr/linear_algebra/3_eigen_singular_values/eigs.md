# eigs

Valeurs propres et vecteurs propres selectionnes d'une matrice creuse.

## 📝 Syntaxe

- d = eigs(A)
- d = eigs(A, k)
- d = eigs(A, k, which)
- d = eigs(A, k, sigma)
- [V, D] = eigs(...)

## 📥 Argument d'entrée

- A - une matrice creuse carree double, single, double complexe ou single complexe.
- k - un entier positif strictement inferieur a la dimension de la matrice. La valeur par defaut est 6.
- which - une chaine selectionnant les valeurs propres : 'lm', 'sm', 'lr', 'sr', 'li', 'si', 'la' ou 'sa'.
- sigma - un scalaire fini. Les valeurs propres les plus proches de sigma sont calculees en mode shift-invert. Les valeurs complexes de sigma sont prises en charge pour les matrices creuses complexes.

## 📤 Argument de sortie

- d - valeurs propres selectionnees retournees dans un vecteur colonne dense.
- V - matrice dense dont les colonnes sont les vecteurs propres selectionnes.
- D - matrice diagonale dense contenant les valeurs propres selectionnees.

## 📄 Description


<b>eigs</b> calcule une partie des valeurs propres et, optionnellement, les vecteurs propres correspondants d'une matrice creuse flottante carree. 

Pour une matrice <b>A</b>, les paires propres retournees verifient : 
$$A\mathbf{v} = \lambda\mathbf{v}$$
 

<b>eigs(A, k, which)</b> selectionne les valeurs propres par module, partie reelle ou partie imaginaire. Les valeurs 'la' et 'sa' sont acceptees comme alias des plus grandes et plus petites valeurs algebriques sur les matrices reelles symetriques. 

<b>eigs(A, k, sigma)</b> selectionne les valeurs propres les plus proches du scalaire <b>sigma</b>. 

Lorsque le backend optionnel ARPACK n'est pas disponible, <b>eigs</b> utilise un fallback dense pour les petites matrices creuses. Les matrices creuses plus grandes necessitent toujours ARPACK afin d'eviter une utilisation memoire excessive. 

Les entrees sparse single et sparse single complexes sont acceptees. Le probleme propre selectionne est calcule par le backend sparse en double precision, puis les sorties denses sont reconverties en single ou single complexe lorsque cela s'applique.

## 💡 Exemples



```matlab
A = sparse([4 1 0; 1 3 0; 0 0 2]);
d = eigs(A, 2)
[V, D] = eigs(A, 2)

```


```matlab
A = sparse(diag([1 2 4 8 16]));
d = eigs(A, 2, 3.5)

```


```matlab
A = sparse(diag([1 + 1i, 2 - 1i, 4 + 2i]));
d = eigs(A, 2, 2 + 0.5i)

```


```matlab
A = sparse(single(diag([1 + 1i, 2 - 1i, 4 + 2i])));
d = eigs(A, 2)

```


## 🔗 Voir aussi

[eig](../../linear_algebra/3_eigen_singular_values/eig.md), [svds](../../linear_algebra/3_eigen_singular_values/svds.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | fallback dense ajoute pour les petites matrices creuses lorsque ARPACK n'est pas disponible. |
| 2.0.0   | entrees sparse single et sparse single complexes prises en charge via le backend sparse en double precision. |

<!--
## 👤 Auteur

Allan CORNET
-->
