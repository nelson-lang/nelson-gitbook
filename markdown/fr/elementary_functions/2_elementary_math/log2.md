# log2

décomposer des nombres à virgule flottante en exposant et mantisse en base 2.

## 📝 Syntaxe

- R = log2(M)
- [F, E] = log2(M)

## 📥 Argument d'entrée

- M - une variable : une matrice

## 📤 Argument de sortie

- R - résultat de log2 : calcule le logarithme en base 2 des éléments de X.
- F - valeurs de la mantisse qui satisfont cette équation : M= F.\*2.^E
- E - valeurs de l'exposant qui satisfont cette équation : M= F.\*2.^E

## 📄 Description


<b>log2</b> décompose plusieurs nombres en exposant et mantisse. 

[F, E] = log2(M) : tout zéro dans M produit F = 0 et E = 0. 

Les valeurs d'entrée Inf, -Inf ou NaN sont renvoyées inchangées dans F avec un exposant correspondant E = 0.

## Fonction(s) utilisée(s)

std::frexp and std::logb C++ functions

## 💡 Exemple



```matlab
x = [1+i,-i;i,2i];
R = log2(x)
[F, E] = log2(x)
```


## 🔗 Voir aussi

[log](../../elementary_functions/2_elementary_math/log.md), [log10](../../elementary_functions/2_elementary_math/log10.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
