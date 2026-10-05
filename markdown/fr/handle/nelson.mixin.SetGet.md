# nelson.mixin.SetGet

Ajouter l'accès aux propriétés par set et get à une classe handle.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.SetGet
- set(obj, name, value)
- value = get(obj, name)

## 📥 Argument d'entrée

- obj - un objet handle d'une classe dérivant de nelson.mixin.SetGet.
- name - un nom de propriété (char ou string), ou un tableau de cellules de noms.
- value - la valeur à affecter.

## 📤 Argument de sortie

- value - la valeur de la propriété.

## 📄 Description


Dérivez une classe handle de <b>nelson.mixin.SetGet</b> pour lui donner des méthodes <b>set</b> et <b>get</b> permettant de lire et écrire les propriétés par nom. 

<b>set(obj, name, value)</b> affecte une propriété ; <b>set(obj, n1, v1, n2, v2, ...)</b> en affecte plusieurs. <b>get(obj, name)</b> renvoie une valeur de propriété ; <b>get(obj)</b>renvoie une structure de toutes les propriétés. Les noms sont comparés sans distinction de casse.

## 💡 Exemple

Accès aux propriétés par nom.

```matlab
classdef Widget < nelson.mixin.SetGet
  properties
    Width = 0
    Height = 0
  end
end
w = Widget();
set(w, 'Width', 100, 'Height', 40);
get(w, 'Width')
```


## 🔗 Voir aussi

[handle](../handle/handle.md), [nelson.mixin.SetGetExactNames](../handle/nelson.mixin.SetGetExactNames.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
