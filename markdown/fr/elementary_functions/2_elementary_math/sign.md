# sign

Calculer la fonction signe d'un nombre.

## 📝 Syntaxe

- R = sign(M)

## 📥 Argument d'entrée

- M - une variable

## 📤 Argument de sortie

- R - résultat de sign.

## 📄 Description

<b>sign</b> calcule la fonction signe d'un nombre.

-1 si l'élément correspondant de M est inférieur à 0.

0 si l'élément correspondant de M est égal à 0.

1 si l'élément correspondant de M est supérieur à 0.

Si l'argument d'entrée est un nombre complexe, <b>sign</b> calcule<b>M ./ abs(M)</b>.

## 💡 Exemple

```matlab
V = [-1 0 15 NaN Inf];
sign(V)
```

## 🔗 Voir aussi

[conj](../../elementary_functions/conj.md), [abs](../../elementary_functions/abs.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
