# xcorr2

CorrÃƒÂ©lation croisÃƒÂ©e 2-D.

## 📝 Syntaxe

- C = xcorr2(A)
- C = xcorr2(A, B)

## 📥 Argument d'entrée

- A - matrices
- B - matrices

## 📤 Argument de sortie

- C - matrice de corrÃƒÂ©lation croisÃƒÂ©e 2-D ou d'autocorrÃƒÂ©lation

## 📄 Description


<b>xcorr2(A, B)</b> calcule la corrÃƒÂ©lation croisÃƒÂ©e entre deux matrices, <b>A</b> et <b>B</b>, en deux dimensions, sans mise ÃƒÂ  l'ÃƒÂ©chelle.

## 💡 Exemple



```matlab
X = ones(2, 3);
H = [1 2; 3 4; 5 6];
C = xcorr2(H, X)
```


## 🔗 Voir aussi

[filter2](../../signal_processing/1_signal_generation_preprocessing/filter2.md), [conv2](../../data_analysis/conv2.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.3.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
