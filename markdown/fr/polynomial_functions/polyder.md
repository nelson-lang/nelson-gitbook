# polyder

Dérivation polynomiale.

## 📝 Syntaxe

- k = polyder(p)
- k = polyder(a, b)
- [q, d] = polyder(a, b)

## 📥 Argument d'entrée

- p - vecteur : coefficients du polynôme
- a - vecteur ligne : coefficients du polynôme
- b - vecteur ligne : coefficients du polynôme

## 📤 Argument de sortie

- k - vecteur ligne : coefficients du polynôme dérivé
- q - vecteur ligne : polynôme numérateur
- d - vecteur ligne : polynôme dénominateur

## 📄 Description


<b>k = polyder(p)</b> renvoie les coefficients de la dérivée du polynôme dont les coefficients sont fournis par le vecteur<b>p</b>. 

<b>k = polyder(a, b)</b> renvoie la dérivée du produit des polynômes<b>a</b> et <b>b</b>. 

<b>[q, d] = polyder(a, b)</b> renvoie la dérivée du quotient des polynômes<b>a</b> et <b>b</b>.

## 💡 Exemple



```matlab

p = [30 0 -20 0 10 50];
q = polyder(p)
```


## 🔗 Voir aussi

[polyval](../polynomial_functions/polyval.md), [poly](../polynomial_functions/poly.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
