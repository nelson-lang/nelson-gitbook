# bernsteinMatrix

Matrice de Bernstein

## 📝 Syntaxe

- B = bernsteinMatrix(n, t)

## 📥 Argument d'entrée

- n - entier non négatif : ordre d'approximation.
- t - nombre ou vecteur : points d'évaluation.

## 📤 Argument de sortie

- B - Matrice de Bernstein : matrice de taille length(t)-par-(n+1).

## 📄 Description

<b>B = bernsteinMatrix(n, t)</b> construit une matrice de Bernstein<b>B</b> de dimensions length(t)-par-(n+1) lorsque t est un vecteur.

La matrice de Bernstein est aussi appelée matrice de Bézier.

Cette fonction permet de calculer les points d'une courbe de Bézier.

## 💡 Exemple

```matlab
t = 0:1/100:1;
B = bernsteinMatrix(3, t);
P = [0 0 0; 1 2 1; 1 -2 3; 5 2 4];
bezierCurve = B * P;
plot3(bezierCurve(:,1), bezierCurve(:,2), bezierCurve(:,3))

```

<img src="bernsteinMatrix.svg" align="middle"/>

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
