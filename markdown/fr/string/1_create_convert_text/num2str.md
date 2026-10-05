# num2str

Convertit des nombres en tableau de caractères.

## 📝 Syntaxe

- S = num2str(A)
- S = num2str(A, precision)
- S = num2str(A, formatSpec)

## 📥 Argument d'entrée

- A - une matrice numérique ou un tableau logique.
- precision - un entier positif : nombre maximal de chiffres significatifs.
- formatSpec - un tableau de caractères : format des champs de sortie.

## 📤 Argument de sortie

- S - un tableau de caractères : représentation textuelle du tableau d'entrée.

## 📄 Description


<b>num2str</b> convertit des nombres en tableau de caractères. 

<b>num2str</b> supprime les espaces en tête d'un tableau de caractères. Pour un meilleur contrôle du résultat, utilisez<b>sprintf</b>.

## 💡 Exemple



```matlab
R = num2str(pi, 4)
R = num2str(magic(3))
```


## 🔗 Voir aussi

[int2str](../../string/1_create_convert_text/int2str.md), [sprintf](../../string/1_create_convert_text/sprintf.md), [mat2str](../../string/1_create_convert_text/mat2str.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
