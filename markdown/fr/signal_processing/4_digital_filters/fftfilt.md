# fftfilt

Filtrage FIR auxiliaire.

## 📝 Syntaxe

- Y = fftfilt(B, X)

## 📥 Argument d'entrée

- B - coefficients FIR.
- X - signal ou matrice d'entree.

## 📤 Argument de sortie

- Y - signal filtre.

## 📄 Description


<b>fftfilt</b> retourne les premiers length(X) echantillons de la convolution entre B et X. Les matrices sont filtrees colonne par colonne.

## 💡 Exemple



```matlab

y = fftfilt([1 1], [1 2 3]);

```


## 🔗 Voir aussi

[filter](../../elementary_functions/7_indexing_dimensions/filter.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
