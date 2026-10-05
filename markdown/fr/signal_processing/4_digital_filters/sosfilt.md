# sosfilt

Filtre des donnees avec des sections du second ordre.

## 📝 Syntaxe

- Y = sosfilt(SOS, X)
- Y = sosfilt(SOS, X, DIM)

## 📥 Argument d'entrée

- SOS - matrice de sections du second ordre.
- X - donnees d'entree.
- DIM - dimension sur laquelle appliquer le filtre.

## 📤 Argument de sortie

- Y - donnees filtrees.

## 📄 Description


<b>sosfilt</b> applique chaque ligne de SOS comme une section de filtre.

## 💡 Exemple



```matlab

y = sosfilt([1 2 1 1 -0.5 0], [1 0 0 0]);

```


## 🔗 Voir aussi

[sos2tf](../../signal_processing/4_digital_filters/sos2tf.md), [filter](../../elementary_functions/7_indexing_dimensions/filter.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
