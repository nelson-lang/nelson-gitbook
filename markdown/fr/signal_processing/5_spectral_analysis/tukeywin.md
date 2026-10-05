# tukeywin

Fenêtre de Tukey.

## 📝 Syntaxe

- W = tukeywin(M)
- W = tukeywin(M, r)

## 📥 Argument d'entrée

- M - longueur de la fenêtre.
- r - rapport de transition.

## 📤 Argument de sortie

- W - vecteur colonne contenant la fenêtre.

## 📄 Description


<b>tukeywin</b> retourne une fenêtre cosinus apodisée.

## 💡 Exemple



```matlab

w = tukeywin(6, 0.5);

```


## 🔗 Voir aussi

[hann](../../signal_processing/5_spectral_analysis/hann.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
