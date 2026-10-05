# roots

Trouver les racines d'un polynôme.

## 📝 Syntaxe

- r = roots(p)

## 📥 Argument d'entrée

- p - vecteur : coefficients du polynôme

## 📤 Argument de sortie

- r - racines

## 📄 Description


<b>r = roots(c)</b> trouve les racines du polynôme <b>c</b>. <b>r</b> est un vecteur colonne. 

Cette fonction utilise la matrice compagnon du polynôme pour déterminer ses racines.

## 💡 Exemple



```matlab

p = [1 0 0 0 -1];
r = roots(p)
```


## 🔗 Voir aussi

[poly](../polynomial_functions/poly.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
