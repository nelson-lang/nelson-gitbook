# interp

Interpole un vecteur par un facteur entier.

## 📝 Syntaxe

- Y = interp(X, R)
- Y = interp(X, R, N)
- Y = interp(X, R, N, alpha)

## 📥 Argument d'entrée

- X - vecteur d'entree non vide. Sa longueur doit etre au moins 2\*N+1.
- R - facteur entier positif d'interpolation.
- N - parametre entier positif de longueur du filtre. La valeur par defaut vaut 4.
- alpha - facteur de bande limitee dans l'intervalle (0, 1]. La valeur par defaut vaut 0.5.

## 📤 Argument de sortie

- Y - vecteur interpole de longueur R fois la longueur de X.

## 📄 Description


<b>interp</b> insere R-1 echantillons entre les echantillons d'entree puis applique un filtre FIR d'interpolation aux moindres carres. Une extrapolation lineaire aux bords est appliquee avant le filtrage pour retourner un vecteur avec la phase et la longueur attendues.

## 💡 Exemple



```matlab

y = interp(1:8, 2, 2);

```


## 🔗 Voir aussi

[upsample](../../signal_processing/1_signal_generation_preprocessing/upsample.md), [resample](../../signal_processing/1_signal_generation_preprocessing/resample.md), [upfirdn](../../signal_processing/1_signal_generation_preprocessing/upfirdn.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
