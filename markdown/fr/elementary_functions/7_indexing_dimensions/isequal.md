# isequal

Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (mêmes dimensions, mêmes valeurs).

## 📝 Syntaxe

- res = isequal(x1, x2)
- res = isequal(x1, x2, xn)

## 📥 Argument d'entrée

- x1 - une valeur
- x2 - une valeur
- xn - une valeur

## 📤 Argument de sortie

- res - une valeur logique

## 📄 Description


<b>isequal</b> renvoie true si x1 et x2 ont la même taille et des contenus de valeurs égales ; sinon, elle renvoie false. 

<b>isequal</b> compare les parties réelle et imaginaire des tableaux numériques. Les valeurs NaN (Not a Number) sont considérées comme NON<b>égales</b> aux autres éléments.

## 💡 Exemples



```matlab
A = eye(3, 3);
res = isequal(A, A)
```


```matlab
A = eye(3, 3);
B = single(A)
res = isequal(A, B)
res = isequalto(A, B)
```


```matlab
res = isequal('nel', 'son')
```


```matlab
res = isequalnNaN, NaN)
```


## 🔗 Voir aussi

[isequaln](../../elementary_functions/7_indexing_dimensions/isequaln.md), [isequalto](../../elementary_functions/7_indexing_dimensions/isequalto.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
