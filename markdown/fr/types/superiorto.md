# superiorto

Déclare une précédence de classe supérieure.

## 📝 Syntaxe

- superiorto(class1, ...)

## 📥 Argument d'entrée

- class1, ... - noms de classes, sous forme de vecteurs de caractères.

## 📄 Description


<b>superiorto(class1, ...)</b> déclare que la classe en cours de définition a une précédence supérieure aux classes nommées lors de la résolution des opérateurs surchargés. 

Elle est appelée depuis un constructeur de classe.

## 💡 Exemple



```matlab
superiorto('double')
```


## 🔗 Voir aussi

[inferiorto](../types/inferiorto.md), [class](../types/class.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
