# enumeration

Renvoie les membres d'une classe d'enumeration classdef.

## 📝 Syntaxe

- c = enumeration(obj)
- c = enumeration(className)

## 📥 Argument d'entrée

- obj - un objet d'enumeration classdef
- className - un nom de classe d'enumeration sous forme de chaine

## 📤 Argument de sortie

- c - un tableau (cell) de chaines

## 📄 Description


<b>enumeration</b> renvoie les membres publics declares par une classe d'enumeration classdef. 

Les membres d'enumeration peuvent etre lus avec <b>ClassName.MemberName</b>. 

Les membres d'enumeration peuvent passer des arguments au constructeur ; les proprietes stockees initialisees par le constructeur sont copiees dans la valeur du membre.

## 💡 Exemples

Lister les membres d'une enumeration.

```matlab
d = [tempdir(), 'nelson_help_enumeration/'];
mkdir(d);
filewrite([d, '/NelsonHelpColor.m'], ["classdef NelsonHelpColor"; "  enumeration"; "    Red"; "    Blue"; "  end"; "end"]);
addpath(d);
members = enumeration('NelsonHelpColor')
```
Utiliser des arguments de constructeur dans les membres d'enumeration.

```matlab
d = [tempdir(), 'nelson_help_enumeration_ctor/'];
if ~isdir(d)
  mkdir(d);
end
filewrite([d, '/NelsonHelpLevel.m'], ["classdef NelsonHelpLevel"; "  properties"; "    Code = 0"; "  end"; "  methods"; "    function obj = NelsonHelpLevel(code)"; "      if nargin > 0"; "        obj.Code = code;"; "      end"; "    end"; "  end"; "  enumeration"; "    Low(1)"; "    High(2)"; "  end"; "end"]);
addpath(d);
high = eval('NelsonHelpLevel.High');
high.Code
```


## 🔗 Voir aussi

[metaclass](../handle/metaclass.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | support des enumerations classdef ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
