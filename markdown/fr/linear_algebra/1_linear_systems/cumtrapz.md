# cumtrapz

Integration numerique cumulative par la methode des trapezes.

## 📝 Syntaxe

- Z = cumtrapz(Y)
- Z = cumtrapz(X, Y)
- Z = cumtrapz(Y, dim)
- Z = cumtrapz(X, Y, dim)

## 📥 Argument d'entrée

- Y - vecteur ou matrice (reel ou single)
- X - espacement des points : vecteur
- dim - dimension : entier positif scalaire

## 📤 Argument de sortie

- Z - integrale cumulative : meme taille que Y.

## 📄 Description


<b>cumtrapz(Y)</b> calcule l'integrale cumulative de <b>Y</b> par la methode des trapezes avec un espacement unitaire, selon la premiere dimension non singuliere. 

<b>cumtrapz(X, Y)</b> integre <b>Y</b> par rapport aux coordonnees donnees par <b>X</b>. 

Le resultat a la meme taille que <b>Y</b>, et sa premiere valeur selon la dimension de travail vaut <b>0</b>.

## 💡 Exemple



```matlab
x = 0:0.1:pi;
Z = cumtrapz(x, sin(x))
```


## 🔗 Voir aussi

[trapz](../1_linear_systems/trapz.md), [cumsum](../../data_analysis/cumsum.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
