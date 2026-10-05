# movprod

Produit mobile.

## 📝 Syntaxe

- R = movprod(A, window)
- R = movprod(A, window, d)

## 📥 Argument d'entrée

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Argument de sortie

- R - Moving product.

## 📄 Description


<b>movprod</b> calcule les produits sur une fenetre mobile centree.

## 💡 Exemple



```matlab
A = [1 2 8 4 5];
R = movprod(A, 3)
```


## 🔗 Voir aussi

[prod](../data_analysis/prod.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
