# gammainc

Fonction gamma incomplète

## 📝 Syntaxe

- Y = gammainc(X, A)
- Y = gammainc(X, A, tail)

## 📥 Argument d'entrée

- X - valeurs réelles positives ou nulles.
- A - valeurs réelles positives ou nulles.
- tail - 'lower' (défaut) ou 'upper'.

## 📤 Argument de sortie

- Y - fonction gamma incomplète régularisée.

## 📄 Description

<b>gammainc</b> retourne la fonction gamma incomplète régularisée inférieure évaluée aux éléments de X et A. gammainc(X, A, 'upper') retourne la version supérieure (complémentaire). X et A doivent être de même taille, ou l'un des deux peut être un scalaire.

## 💡 Exemple

```matlab
Y = gammainc(0.5, 2)
```

## 🔗 Voir aussi

[gamma](../special_functions/gamma.md), [gammaln](../special_functions/gammaln.md), [betainc](../special_functions/betainc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
