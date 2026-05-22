# class

Retourne le nom de classe d'un objet ou crée un objet nommé.

## 📝 Syntaxe

- name = class(var)
- obj = class(st, strname)

## 📥 Argument d'entrée

- var - une variable
- st - une structure
- strname - une chaîne : nom de la classe souhaité

## 📤 Argument de sortie

- name - une chaîne
- obj - un objet de type 'strname' basé sur la structure 'st'

## 📄 Description

<b>name = class(var)</b> renvoie la classe de la variable var.

Les classes standard sont :

'cell'

'struct'

'single'

'double'

'logical'

'char'

'int8'

'int16'

'int32'

'int64'

'uint8'

'uint16'

'uint32'

'uint64'

'function_handle'

## 💡 Exemples

```matlab
A = 3;
res = class(A)
```

```matlab
C = [1 ; 3];
res = class(C)
```

```matlab
addpath([nelsonroot(), '/modules/overload/examples/complex']);
c = complexObj(3,4);
class(c)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [isdouble](../types/isdouble.md), [isfloat](../types/isfloat.md), [ischar](../types/ischar.md), [isstruct](../types/isstruct.md), [iscell](../types/iscell.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
