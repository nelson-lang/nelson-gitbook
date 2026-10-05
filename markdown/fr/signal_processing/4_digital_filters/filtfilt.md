# filtfilt

Filtrage numÃ©rique aller-retour.

## 📝 Syntaxe

- Y = filtfilt(B, A, X)

## 📥 Argument d'entrée

- B, A - coefficients du filtre.
- X - signal d'entrÃ©e.

## 📤 Argument de sortie

- Y - signal filtrÃ©.

## 📄 Description


<b>filtfilt</b> filtre vers l'avant, inverse le rÃ©sultat, filtre Ã  nouveau, puis rÃ©inverse.

## 💡 Exemple



```matlab

y = filtfilt([1 1] / 2, 1, [1 2 3 4]);

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
