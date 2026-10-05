# hampel

Filtrage d'aberrants par Hampel.

## 📝 Syntaxe

- Y = hampel(X)
- Y = hampel(X, K)
- [Y, I] = hampel(X, K, NSIGMA)
- [Y, I, XMEDIAN, XSIGMA] = hampel(...)

## 📥 Argument d'entrée

- X - signal d'entree.
- K - nombre de voisins de chaque cote.
- NSIGMA - seuil en ecarts types robustes.

## 📤 Argument de sortie

- Y - signal filtre.
- I - indices logiques des aberrants.
- XMEDIAN - valeurs medianes locales.
- XSIGMA - estimations locales d'ecart type robuste.

## 📄 Description


<b>hampel</b> remplace les aberrants par la mediane locale.

## 💡 Exemple



```matlab

[y, i] = hampel([1 1 10 1 1], 1, 2);

```


## 🔗 Voir aussi

[medfilt1](../../signal_processing/1_signal_generation_preprocessing/medfilt1.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
