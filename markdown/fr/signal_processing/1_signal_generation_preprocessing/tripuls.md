# tripuls

Impulsion triangulaire échantillonnée.

## 📝 Syntaxe

- Y = tripuls(T)
- Y = tripuls(T, width)
- Y = tripuls(T, width, skew)

## 📥 Argument d'entrée

- T - positions d'échantillonnage.
- width - largeur de l'impulsion.
- skew - paramètre de position du sommet.

## 📤 Argument de sortie

- Y - échantillons de l'impulsion.

## 📄 Description


<b>tripuls</b> retourne une impulsion triangulaire avec inclinaison optionnelle.

## 💡 Exemple



```matlab

y = tripuls([-0.5 0 0.5], 1);

```


## 🔗 Voir aussi

[rectpuls](../../signal_processing/1_signal_generation_preprocessing/rectpuls.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
