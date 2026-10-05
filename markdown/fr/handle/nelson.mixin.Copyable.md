# nelson.mixin.Copyable

Ajouter une méthode copy à une classe handle.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.Copyable
- b = copy(a)

## 📥 Argument d'entrée

- a - un objet handle d'une classe dérivant de nelson.mixin.Copyable.

## 📤 Argument de sortie

- b - une copie superficielle indépendante de a.

## 📄 Description


Dérivez une classe handle de <b>nelson.mixin.Copyable</b> pour lui donner une méthode <b>copy</b> qui renvoie une copie superficielle indépendante d'un objet. 

<b>copy(a)</b> crée un nouvel objet et copie chaque valeur de propriété de <b>a</b>. Les propriétés déclarées <b>NonCopyable</b> ne sont pas copiées et gardent leur valeur par défaut dans la copie. La copie est superficielle : les propriétés à valeur handle sont partagées entre l'original et la copie. 

<b>nelson.mixin.Copyable</b> est elle-même une classe handle.

## 💡 Exemple

Une classe handle copiable.

```matlab
classdef Node < nelson.mixin.Copyable
  properties
    Value = 0
  end
end
a = Node();
a.Value = 42;
b = copy(a);
b.Value = 7;
a.Value   % toujours 42
```


## 🔗 Voir aussi

[handle](../handle/handle.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
