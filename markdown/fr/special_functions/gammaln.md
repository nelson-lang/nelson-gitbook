# gammaln

Logarithme de la fonction gamma

## 📝 Syntaxe

- R = gammaln(M)

## 📥 Argument d'entrée

- M - une matrice réelle simple ou double.

## 📤 Argument de sortie

- R - résultat de la fonction gammaln.

## 📄 Description

La fonction<b>gammaln(A)</b> calcule le logarithme naturel de la fonction gamma pour une entrée donnée <b>A</b>, exprimé comme <b>gammaln(A) = log(gamma(A))</b>.

Il est important de noter que A doit être un nombre réel non négatif.

L'utilisation de gammaln aide à prévenir les problèmes potentiels de sous-débordement et de débordement qui pourraient survenir si l'on calculait directement<b>log(gamma(A))</b>.

## 💡 Exemple

```matlab
R = gammaln([0:0.1:pi])
```

## 🔗 Voir aussi

[gamma](../special_functions/gamma.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
