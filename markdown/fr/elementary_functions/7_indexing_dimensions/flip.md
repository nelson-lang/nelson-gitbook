# flip

Inverser l'ordre des éléments

## 📝 Syntaxe

- B = flip(A, dim)

## 📥 Argument d'entrée

- A - un tableau
- dim - un entier positif

## 📤 Argument de sortie

- B - tableau inversé.

## 📄 Description


<b>flip</b> renvoie un nouveau tableau de <b>A</b> inversé selon la dimension <b>dim</b>.

## 💡 Exemple



```matlab
x = eye(3, 2);
y = flip(x, 1)
y = flip(x, 2)
y = flip(x, 3)
```


## 🔗 Voir aussi

[flipud](../../elementary_functions/7_indexing_dimensions/flipud.md), [fliplr](../../elementary_functions/7_indexing_dimensions/fliplr.md), [flipdim](../../elementary_functions/7_indexing_dimensions/flipdim.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
