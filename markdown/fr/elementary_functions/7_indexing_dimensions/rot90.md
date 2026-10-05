# rot90

Fait pivoter un tableau de 90 degrés.

## 📝 Syntaxe

- B = rot90(A)
- B = rot90(A, k)

## 📥 Argument d'entrée

- A - un tableau : numérique, logique, caractère, chaîne, cellule, structure ou creux.
- k - une valeur scalaire entière : constante de rotation.

## 📤 Argument de sortie

- B - tableau pivoté.

## 📄 Description


<b>B = rot90(A, k)</b> fait pivoter le tableau <b>A</b> dans le sens antihoraire de <b>k \* 90</b> degrés, où <b>k</b> est une valeur scalaire entière. Les valeurs négatives appliquent une rotation horaire. 

Le résultat conserve la classe en entrée et le stockage creux lorsque cela s'applique. 

Utilisez la fonction<b>flip</b> pour retourner un tableau selon n'importe quelle dimension.

## 💡 Exemple



```matlab
x = eye(3, 2);
y = rot90(x, 0)
y = rot90(x, 1)
y = rot90(x, 2)
y = rot90(x, 3)
```


## 🔗 Voir aussi

[flipud](../../elementary_functions/7_indexing_dimensions/flipud.md), [fliplr](../../elementary_functions/7_indexing_dimensions/fliplr.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
