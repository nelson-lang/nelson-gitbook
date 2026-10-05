# upfirdn

Surechantillonne, filtre en FIR, puis sous-echantillonne.

## 📝 Syntaxe

- Y = upfirdn(X, H)
- Y = upfirdn(X, H, P, Q)
- Y = upfirdn(X, H, P, Q, dim)

## 📥 Argument d'entrée

- X - signal d'entree non vide et non sparse.
- H - coefficients FIR non vides et non sparse. Une matrice applique une colonne de filtre par colonne de signal.
- P - facteur de surechantillonnage.
- Q - facteur de sous-echantillonnage.
- dim - dimension a traiter.

## 📤 Argument de sortie

- Y - sortie filtree multirate.

## 📄 Description


<b>upfirdn</b> fournit l'operation multirate de base utilisee par les fonctions de reechantillonnage.

Lorsque <b>H</b> est une matrice, chaque colonne de <b>H</b> filtre la colonne de signal correspondante.

## 💡 Exemples



```matlab

Y = upfirdn([1 2 3], [1 1], 2, 2);

```


```matlab

Y = upfirdn([1; 2], [1 2; 3 4]);

```


## 🔗 Voir aussi

[upsample](../../signal_processing/1_signal_generation_preprocessing/upsample.md), [downsample](../../signal_processing/1_signal_generation_preprocessing/downsample.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
