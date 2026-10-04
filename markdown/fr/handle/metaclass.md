# metaclass

Renvoie les metadonnees classdef.

## 📝 Syntaxe

- m = metaclass(obj)
- m = metaclass(className)
- m = ?ClassName

## 📥 Argument d'entrée

- obj - un objet classdef ou handle
- className - un nom de classe sous forme de chaine, y compris les noms qualifies par paquet

## 📤 Argument de sortie

- m - une structure de metadonnees

## 📄 Description

<b>metaclass</b> renvoie les metadonnees d'une classe classdef.

<b>?ClassName</b> est accepte comme raccourci compatible pour <b>metaclass('ClassName')</b>, y compris avec les noms de classes qualifies par paquet.

La structure retournee contient <b>Name</b>, <b>SuperclassList</b>, <b>PropertyList</b>, <b>MethodList</b>, <b>EventList</b> et <b>EnumerationMemberList</b>. <b>EventList</b> contient les evenements publics; <b>EventDetails</b> contient tous les evenements declares.

<b>ClassDetails</b> indique les attributs bruts de la classe et des indicateurs derives comme <b>Abstract</b>, <b>Sealed</b> et <b>Handle</b>.

Pour les classes classdef, <b>PropertyDetails</b>, <b>MethodDetails</b>, <b>EventDetails</b> et <b>EnumerationDetails</b> exposent des structures de metadonnees Nelson pour les attributs courants: acces, methodes statiques, cachees ou scellees, proprietes constantes, dependantes et observables. Les structures de detail contiennent aussi un tableau de cellules <b>Attributes</b> avec les attributs de bloc bruts.

Les champs de <b>ClassDetails</b> sont <b>Name</b>, <b>Attributes</b>, <b>Abstract</b>, <b>Sealed</b>, <b>Handle</b>, <b>Hidden</b>, <b>ConstructOnLoad</b> et <b>InferiorClasses</b>. <b>InferiorClasses</b> conserve l'expression d'attribut de classe sous forme de texte.

Les champs de <b>PropertyDetails</b> sont <b>Name</b>, <b>DefiningClass</b>, <b>DefaultValueExpression</b>, <b>Access</b>, <b>GetAccess</b>, <b>SetAccess</b>, <b>GetMethod</b>, <b>SetMethod</b>, <b>Constant</b>, <b>Dependent</b>, <b>Abstract</b>, <b>Hidden</b>, <b>GetObservable</b>, <b>SetObservable</b>, <b>AbortSet</b>, <b>Transient</b>, <b>NonCopyable</b>, <b>Dynamic</b>, <b>ValidationExpression</b> et <b>Attributes</b>.

Lorsque <b>metaclass</b> est appele avec un objet scalaire qui possede des proprietes dynamiques, <b>PropertyList</b> et <b>PropertyDetails</b> incluent ces proprietes d'instance avec <b>Dynamic</b> defini a true.

Les champs de <b>MethodDetails</b> sont <b>Name</b>, <b>DefiningClass</b>, <b>Access</b>, <b>Static</b>, <b>Hidden</b>, <b>Sealed</b>, <b>Abstract</b> et <b>Attributes</b>.

Les champs de <b>EventDetails</b> sont <b>Name</b>, <b>DefiningClass</b>, <b>ListenAccess</b>, <b>NotifyAccess</b>, <b>Hidden</b> et <b>Attributes</b>. Les champs de <b>EnumerationDetails</b> sont <b>Name</b>, <b>DefiningClass</b> et <b>ConstructorArguments</b>.

## 💡 Exemple

Lire les metadonnees classdef.

```matlab
d = [tempdir(), 'nelson_help_metaclass/'];
mkdir(d);
filewrite([d, '/NelsonHelpMetaPoint.m'], ["classdef NelsonHelpMetaPoint"; "  properties (Constant)"; "    Dimension = 2"; "  end"; "  properties"; "    X = 0"; "  end"; "  methods"; "    function r = value(obj)"; "      r = obj.X;"; "    end"; "  end"; "  methods (Static)"; "    function obj = origin()"; "      obj = NelsonHelpMetaPoint();"; "    end"; "  end"; "end"]);
addpath(d);
m = ?NelsonHelpMetaPoint;
m.PropertyList
m.ClassDetails.Handle
m.PropertyDetails(find(strcmp({m.PropertyDetails.Name}, 'Dimension'))).Constant
m.PropertyDetails(find(strcmp({m.PropertyDetails.Name}, 'Dimension'))).Attributes
m.MethodDetails(find(strcmp({m.MethodDetails.Name}, 'origin'))).Static
m.MethodDetails(find(strcmp({m.MethodDetails.Name}, 'origin'))).Attributes
```

## 🔗 Voir aussi

[methods](../handle/methods.md), [properties](../handle/properties.md), [events](../handle/events.md), [enumeration](../handle/enumeration.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description                          |
| ------- | --------------------------------------- |
| 2.0.0   | support des metadonnees classdef ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
