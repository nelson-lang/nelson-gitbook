# peak2peak

Ecart entre maximum et minimum.

## 📝 Syntaxe

- Y = peak2peak(X)
- Y = peak2peak(X, "all")
- Y = peak2peak(X, DIM)
- Y = peak2peak(X, VECDIM)

## 📥 Argument d'entrée

- X - donnees d'entree.
- DIM - dimension sur laquelle calculer l'ecart.
- VECDIM - vecteur de dimensions sur lesquelles calculer l'ecart.

## 📤 Argument de sortie

- Y - valeur crete-a-crete.

## 📄 Description


<b>peak2peak</b> calcule max(X) - min(X).

## 💡 Exemple



```matlab

y = peak2peak([1 4 -2]);

```


## 🔗 Voir aussi

[rms](../../signal_processing/2_measurements_feature_extraction/rms.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
