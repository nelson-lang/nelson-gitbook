# griddedInterpolant

Objet d'interpolation de donnees sur grille

## 📝 Syntaxe

- F = griddedInterpolant(x, v)
- F = griddedInterpolant(x, v, method)
- F = griddedInterpolant(x, v, method, extrapolationMethod)
- F = griddedInterpolant(gridVecs, V)
- F = griddedInterpolant(X1, X2, ..., Xn, V)
- F = griddedInterpolant(V)
- Vq = F(xq)
- Vq = F(xq1, xq2, ..., xqn)
- Vq = F(queryGridVecs)

## 📥 Argument d'entrée

- x - un vecteur de points d'echantillonnage (grille 1-D), strictement croissant.
- v - les valeurs aux points d'echantillonnage.
- gridVecs - un tableau de cellules <b>{x1, x2, ..., xn}</b> de vecteurs de grille, un par dimension de <b>V</b>.
- V - un tableau de valeurs definies sur la grille.
- method - une chaine de caracteres : <b>'linear'</b> (defaut), <b>'nearest'</b>, <b>'previous'</b>, <b>'next'</b>, <b>'pchip'</b>, <b>'cubic'</b>, <b>'spline'</b> ou <b>'makima'</b>.
- extrapolationMethod - une chaine de caracteres choisissant la regle d'extrapolation : <b>'linear'</b>, <b>'nearest'</b>, <b>'previous'</b>, <b>'next'</b>, <b>'pchip'</b>, <b>'cubic'</b>, <b>'spline'</b>, <b>'makima'</b> ou <b>'none'</b>. Le defaut correspond a <b>method</b>.

## 📤 Argument de sortie

- F - un objet griddedInterpolant.
- Vq - les valeurs interpolees aux points de requete.

## 📄 Description


<b>griddedInterpolant</b> stocke des points et des valeurs sur grille pour des requetes d'interpolation repetees. 

L'objet expose quatre proprietes accessibles en lecture et en ecriture : <b>GridVectors</b> (un tableau de cellules de vecteurs de grille), <b>Values</b>, <b>Method</b> et <b>ExtrapolationMethod</b>. 

On evalue l'interpolant en appelant l'objet comme une fonction, soit avec un tableau de requete par dimension, soit avec un unique tableau de cellules de vecteurs de requete. 

La methode <b>'cubic'</b> utilise la convolution cubique et requiert une grille a espacement uniforme ; sur une grille non uniforme elle bascule vers <b>'spline'</b>. La convolution cubique ne gere pas l'extrapolation : les points hors grille renvoient <b>NaN</b> lorsque <b>ExtrapolationMethod</b> vaut <b>'cubic'</b>.

## 💡 Exemples

Interpolation 1-D.

```matlab
F = griddedInterpolant([1 2 3], [10 20 30]);
Vq = F(2.5)
```
Grille N-D donnee comme un tableau de cellules de vecteurs de grille.

```matlab
F = griddedInterpolant({1:3, 1:3}, magic(3));
Vq = F(2, 2)
```
Interpolation spline et lecture des proprietes.

```matlab
F = griddedInterpolant([1 2 3], [10 20 30], 'spline');
Vq = F(2.5);
F.Method
F.ExtrapolationMethod
```


## 🔗 Voir aussi

[interp1](../special_functions/interp1.md), [interpn](../special_functions/interpn.md), [scatteredInterpolant](../geometry/scatteredInterpolant.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
