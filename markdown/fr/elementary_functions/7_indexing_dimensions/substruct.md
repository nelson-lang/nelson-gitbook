# substruct

Crée un argument structure pour subsasgn ou subsref

## 📝 Syntaxe

- S = substruct(type1, subs1, type2, subs2, ...)

## 📄 Description


<b>S = substruct(type1, subs1, type2, subs2, ...)</b> génère une structure contenant les champs nécessaires à une méthode<b>subsref</b> ou <b>subsasgn</b> surchargée. 

Chaque vecteur de caractères type est limité à '.', '()' ou '{}'. 

L'argument subs associé doit être un nom de champ (pour le type '.') ou un tableau de cellules contenant des vecteurs d'indices (pour les types '()' ou '{}').

## 💡 Exemple



```matlab
S = struct('field1', 10, 'field2', 'Hello', 'field3', [1, 2, 3]);
% Create a substruct for accessing the 'field2'
s = substruct('.', 'field2');
% Use subsref to get the value of 'field2'
value = subsref(S, s);
```


## 🔗 Voir aussi

[subsref](../../operators/subsref.md), [subsasgn](../../operators/subsasgn.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
