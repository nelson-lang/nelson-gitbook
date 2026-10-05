# svds

Valeurs singulieres et vecteurs singuliers selectionnes d'une matrice creuse.

## 📝 Syntaxe

- s = svds(A)
- s = svds(A, k)
- s = svds(A, k, which)
- [U, S, V] = svds(...)

## 📥 Argument d'entrée

- A - une matrice creuse double, single, double complexe ou single complexe.
- k - un entier positif strictement inferieur a la plus petite dimension de la matrice. La valeur par defaut est 6.
- which - une chaine : 'largest' ou 'lm' pour les plus grandes valeurs singulieres, 'smallest' ou 'sm' pour les plus petites valeurs singulieres.

## 📤 Argument de sortie

- s - valeurs singulieres selectionnees retournees dans un vecteur colonne dense par ordre decroissant.
- U - matrice dense dont les colonnes sont les vecteurs singuliers gauches selectionnes.
- S - matrice diagonale dense contenant les valeurs singulieres selectionnees.
- V - matrice dense dont les colonnes sont les vecteurs singuliers droits selectionnes.

## 📄 Description


<b>svds</b> calcule des valeurs singulieres selectionnees et, optionnellement, les vecteurs singuliers correspondants d'une matrice creuse flottante. 

Pour une matrice <b>A</b>, les facteurs retournes verifient : 
$$A V = U S$$
 

Les matrices hautes utilisent le plus petit probleme normal possible, et les matrices larges utilisent le probleme normal transpose correspondant. 

Lorsque le backend optionnel ARPACK n'est pas disponible, <b>svds</b> utilise un fallback dense pour les petites matrices creuses. Les matrices creuses plus grandes necessitent toujours ARPACK afin d'eviter une utilisation memoire excessive. 

Les entrees sparse single et sparse single complexes sont acceptees. Le probleme de valeurs singulieres selectionne est calcule par le backend sparse en double precision, puis les sorties denses sont reconverties en single ou single complexe lorsque cela s'applique.

## 💡 Exemples



```matlab
A = sparse([1 0 0; 0 2 0; 3 0 0; 0 4 0; 0 0 5]);
s = svds(A, 2)
[U, S, V] = svds(A, 2, 'smallest')

```


```matlab
A = sparse([1 + 1i 0 0; 0 2i 0; 3 0 0; 0 4 0; 0 0 5i]);
s = svds(A, 2)

```


```matlab
A = sparse(single([1 + 1i 0 0; 0 2i 0; 3 0 0; 0 4 0; 0 0 5i]));
s = svds(A, 2)

```


## 🔗 Voir aussi

[svd](../../linear_algebra/3_eigen_singular_values/svd.md), [eigs](../../linear_algebra/3_eigen_singular_values/eigs.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | fallback dense ajoute pour les petites matrices creuses lorsque ARPACK n'est pas disponible. |
| 2.0.0   | entrees sparse single et sparse single complexes prises en charge via le backend sparse en double precision. |

<!--
## 👤 Auteur

Allan CORNET
-->
