# inferiorto

Déclare une précédence de classe inférieure.

## 📝 Syntaxe

- inferiorto(class1, ...)

## 📥 Argument d'entrée

- class1, ... - noms de classes, sous forme de vecteurs de caractères.

## 📄 Description


<b>inferiorto(class1, ...)</b> déclare que la classe en cours de définition a une précédence inférieure aux classes nommées lors de la résolution des opérateurs surchargés. 

Elle est appelée depuis un constructeur de classe.

## 💡 Exemple



```matlab
inferiorto('double')
```


## 🔗 Voir aussi

[superiorto](../types/superiorto.md), [class](../types/class.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
