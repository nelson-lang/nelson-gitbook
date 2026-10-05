# mustBeA

Vérifie que la valeur d'entrée appartient à l'une des classes spécifiées.

## 📝 Syntaxe

- mustBeA(var, classNames)
- mustBeA(var, classNames, argPosition)
- C++: void mustBeA(const ArrayOfVector& args, const wstringVector &classNames, int argPosition)

## 📥 Argument d'entrée

- var - une variable.
- classNames - une variable : nom du type de données ou de la classe.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description


<b>mustBeA</b> vérifie que la valeur d'entrée appartient à l'une des classes spécifiées. 

Une valeur est acceptée quand sa classe, l'une de ses superclasses, ou l'une des catégories <b>numeric</b>, <b>float</b> et <b>integer</b> figure dans <b>classNames</b> (mêmes règles que <b>isa</b>).

## 💡 Exemple



```matlab
mustBeA(1, 'double')
mustBeA([], ["double", "single"])
```


## 🔗 Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md), [isa](../types/isa.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | superclasses et catégories numeric, float, integer acceptées. |

<!--
## 👤 Auteur

Allan CORNET
-->
