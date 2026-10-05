# nelson.mixin.SetGetExactNames

Accès set et get aux propriétés avec noms sensibles à la casse.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.SetGetExactNames
- set(obj, nom, valeur)
- valeur = get(obj, nom)

## 📥 Argument d'entrée

- obj - un objet handle d'une classe dérivant de nelson.mixin.SetGetExactNames.
- nom - un nom de propriété (char ou string), ou un tableau de cellules de noms, écrit avec la casse exacte.
- valeur - la valeur à affecter.

## 📤 Argument de sortie

- valeur - la valeur de la propriété.

## 📄 Description


Dérivez une classe handle de <b>nelson.mixin.SetGetExactNames</b> pour lui donner des méthodes <b>set</b> et <b>get</b> permettant de lire et écrire les propriétés par leur nom. Elle se comporte exactement comme <b>nelson.mixin.SetGet</b>, dont elle dérive, sauf que les noms de propriétés sont comparés de façon <b>sensible à la casse</b> : un nom qui ne diffère de la propriété déclarée que par la casse est rejeté. 

<b>set(obj, nom, valeur)</b> affecte une propriété ; <b>set(obj, n1, v1, n2, v2, ...)</b> en affecte plusieurs. <b>get(obj, nom)</b> renvoie la valeur d'une propriété ; <b>get(obj)</b>renvoie une structure de toutes les propriétés.

## 💡 Exemple

Accès aux propriétés par nom, sensible à la casse.

```matlab
classdef Widget < nelson.mixin.SetGetExactNames
  properties
    Width = 0
    Height = 0
  end
end
w = Widget();
set(w, 'Width', 100);
get(w, 'Width')     % renvoie 100
get(w, 'width')     % erreur : 'width' n'est pas le nom déclaré 'Width'
```


## 🔗 Voir aussi

[handle](../handle/handle.md), [nelson.mixin.SetGet](../handle/nelson.mixin.SetGet.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
