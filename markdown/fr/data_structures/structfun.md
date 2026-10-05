# structfun

Applique une fonction a chaque champ d'une structure scalaire.

## 📝 Syntaxe

- B = structfun(fun, S)
- B = structfun(fun, S, 'UniformOutput', tf)

## 📥 Argument d'entrée

- fun - handle de fonction applique a chaque valeur de champ.
- S - structure scalaire.
- tf - option 'UniformOutput' : true (defaut) ou false.

## 📤 Argument de sortie

- B - vecteur colonne (sortie uniforme) ou structure (sortie non uniforme).

## 📄 Description


<b>structfun(fun, S)</b> applique <b>fun</b> a chaque champ de la structure scalaire <b>S</b> et retourne les resultats sous forme de vecteur colonne. 

Avec <b>'UniformOutput'</b> a <b>false</b>, les resultats sont retournes dans une structure ayant les memes champs que <b>S</b>.

## 💡 Exemple



```matlab
s.a = 1; s.b = 2; s.c = 3;
structfun(@(x) x * 2, s)
```


## 🔗 Voir aussi

[cellfun](../data_structures/cellfun.md), [arrayfun](../data_structures/arrayfun.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
