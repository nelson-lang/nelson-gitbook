# isdiag

Vérifie si une matrice est diagonale.

## 📝 Syntaxe

- tf = isdiag(M)

## 📥 Argument d'entrée

- M - un tableau numérique

## 📤 Argument de sortie

- tf - booléen : résultat de 'isdiag'.

## 📄 Description


<b>isdiag</b> renvoie un scalaire booléen si la matrice est diagonale.

## 💡 Exemple



```matlab
A = eye(3, 3);
R = isdiag(A)
R = isdiag(A(:,1))
```


## 🔗 Voir aussi

[istriu](../../elementary_functions/7_indexing_dimensions/istriu.md), [istril](../../elementary_functions/7_indexing_dimensions/istril.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
