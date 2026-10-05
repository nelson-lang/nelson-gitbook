# rectpuls

Impulsion rectangulaire échantillonnée.

## 📝 Syntaxe

- Y = rectpuls(T)
- Y = rectpuls(T, width)

## 📥 Argument d'entrée

- T - positions d'échantillonnage.
- width - largeur de l'impulsion.

## 📤 Argument de sortie

- Y - échantillons de l'impulsion.

## 📄 Description


<b>rectpuls</b> retourne un dans l'intervalle de l'impulsion et zéro ailleurs.

## 💡 Exemple



```matlab

y = rectpuls([-0.5 0 0.5], 1);

```


## 🔗 Voir aussi

[tripuls](../../signal_processing/1_signal_generation_preprocessing/tripuls.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
