# isStringScalar

vérifie si l'entrée est un tableau de chaînes avec un seul élément.

## 📝 Syntaxe

- r = isStringScalar(str)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📤 Argument de sortie

- r - un booléen : vrai si <b>res</b> est de type chaîne et scalaire, sinon faux.

## 📄 Description


<b>isStringScalar</b> vérifie si l'entrée est un tableau de chaînes avec un seul élément.

## 💡 Exemple



```matlab
r = isStringScalar('hello')
r = isStringScalar("hello")
r = isStringScalar(["hello", "world"])
```


## 🔗 Voir aussi

[ischar](../../types/ischar.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
