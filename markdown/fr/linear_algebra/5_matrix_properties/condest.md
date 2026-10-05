# condest

Estimation du nombre de condition en norme 1.

## 📝 Syntaxe

- c = condest(A)
- c = condest(A, t)
- [c, v] = condest(A)

## 📥 Argument d'entrée

- A - une matrice numerique carree.
- t - nombre entier positif de vecteurs de test. La valeur par defaut est min(size(A, 1), 2).

## 📤 Argument de sortie

- c - borne inferieure estimee du nombre de condition en norme 1.
- v - vecteur noyau approche associe a l'estimation.

## 📄 Description


<b>condest</b> estime <b>norm(A, 1) \* norm(inv(A), 1)</b> sans former explicitement <b>inv(A)</b>. 

L'implementation utilise des resolutions repetees avec <b>A</b> et <b>A'</b>, ce qui convient aux matrices sparse. 

Les matrices sparse double, sparse single, sparse double complexes et sparse single complexes sont prises en charge. Les entrees zero stockees dans une matrice sparse ne contribuent pas au test de singularite structurelle.

## 💡 Exemple



```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
[c, v] = condest(A)

```


## 🔗 Voir aussi

[cond](../../linear_algebra/5_matrix_properties/cond.md), [rcond](../../linear_algebra/5_matrix_properties/rcond.md), [normest](../../elementary_functions/2_elementary_math/normest.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | comportement sparse single et sparse single complexe documente. |

<!--
## 👤 Auteur

Allan CORNET
-->
