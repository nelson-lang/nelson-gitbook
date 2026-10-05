#import "nelson_help.typ": *

= metaclass <handle:metaclass>

Renvoie les metadonnees classdef.

== Syntaxe

- #raw("m = metaclass(obj)");
- #raw("m = metaclass(className)");
- #raw("m = ?ClassName");

== Argument d'entrée

/ obj: un objet classdef ou handle
/ className: un nom de classe sous forme de chaine, y compris les noms qualifies par paquet

== Argument de sortie

/ m: une structure de metadonnees

== Description

#strong[metaclass]; renvoie les metadonnees d'une classe classdef.

 #strong[?ClassName]; est accepte comme raccourci compatible pour #strong[metaclass('ClassName')];, y compris avec les noms de classes qualifies par paquet.

 La structure retournee contient #strong[Name];, #strong[SuperclassList];, #strong[PropertyList];, #strong[MethodList];, #strong[EventList]; et #strong[EnumerationMemberList];. #strong[EventList]; contient les evenements publics; #strong[EventDetails]; contient tous les evenements declares.

 #strong[ClassDetails]; indique les attributs bruts de la classe et des indicateurs derives comme #strong[Abstract];, #strong[Sealed]; et #strong[Handle];.

 Pour les classes classdef, #strong[PropertyDetails];, #strong[MethodDetails];, #strong[EventDetails]; et #strong[EnumerationDetails]; exposent des structures de metadonnees Nelson pour les attributs courants: acces, methodes statiques, cachees ou scellees, proprietes constantes, dependantes et observables. Les structures de detail contiennent aussi un tableau de cellules #strong[Attributes]; avec les attributs de bloc bruts.

 Les champs de #strong[ClassDetails]; sont #strong[Name];, #strong[Attributes];, #strong[Abstract];, #strong[Sealed];, #strong[Handle];, #strong[Hidden];, #strong[ConstructOnLoad]; et #strong[InferiorClasses];. #strong[InferiorClasses]; conserve l'expression d'attribut de classe sous forme de texte.

 Les champs de #strong[PropertyDetails]; sont #strong[Name];, #strong[DefiningClass];, #strong[DefaultValueExpression];, #strong[Access];, #strong[GetAccess];, #strong[SetAccess];, #strong[GetMethod];, #strong[SetMethod];, #strong[Constant];, #strong[Dependent];, #strong[Abstract];, #strong[Hidden];, #strong[GetObservable];, #strong[SetObservable];, #strong[AbortSet];, #strong[Transient];, #strong[NonCopyable];, #strong[Dynamic];, #strong[ValidationExpression]; et #strong[Attributes];.

 Lorsque #strong[metaclass]; est appele avec un objet scalaire qui possede des proprietes dynamiques, #strong[PropertyList]; et #strong[PropertyDetails]; incluent ces proprietes d'instance avec #strong[Dynamic]; defini a true.

 Les champs de #strong[MethodDetails]; sont #strong[Name];, #strong[DefiningClass];, #strong[Access];, #strong[Static];, #strong[Hidden];, #strong[Sealed];, #strong[Abstract]; et #strong[Attributes];.

 Les champs de #strong[EventDetails]; sont #strong[Name];, #strong[DefiningClass];, #strong[ListenAccess];, #strong[NotifyAccess];, #strong[Hidden]; et #strong[Attributes];. Les champs de #strong[EnumerationDetails]; sont #strong[Name];, #strong[DefiningClass]; et #strong[ConstructorArguments];.


== Exemple

Lire les metadonnees classdef.

``````matlab
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
``````


== Voir aussi

#nlink(<handle:methods>)[methods];, #nlink(<handle:properties>)[properties];, #nlink(<handle:events>)[events];, #nlink(<handle:enumeration>)[enumeration];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [support des metadonnees classdef ajoute],
)

// Auteur: Allan CORNET
