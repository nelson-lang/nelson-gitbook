# fftn

Transformée de Fourier rapide N-dimensionnelle.

## 📝 Syntaxe

- Y = fftn(X)
- Y = fftn(X, sz)

## 📥 Argument d'entrée

- X - un vecteur, une matrice ou un tableau N-D (double, single, integer, logical).
- sz - un tableau multidimensionnel.

## 📤 Argument de sortie

- Y - un vecteur, une matrice ou un tableau N-D : représentation dans le domaine fréquentiel.

## 📄 Description


<b>Y = fftn(X, sz)</b> complète <b>X</b> par des zéros ou tronque <b>X</b> pour créer un tableau multidimensionnel de taille <b>sz</b> avant d'effectuer la transformée. 

La taille du résultat <b>Y</b> est <b>sz</b>. 

<b>Y = fftn(X)</b> effectue la transformée de Fourier rapide N-dimensionnelle. 

Le résultat <b>Y</b> a la même taille que <b>X</b>.

## 💡 Exemple



```matlab
f = zeros(5, 5);
f(1:5,4:5) = 1;
Y = ifftn(fftn(f));
```


## 🔗 Voir aussi

[ifftn](../fftw/ifftn.md), [fft](../fftw/fft.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
