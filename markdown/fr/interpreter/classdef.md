# classdef

Définition de classe

## 📝 Syntaxe

- classdef ClassName
- classdef ClassName < SuperClass
- classdef ClassName < handle

## 📄 Description

<b>classdef</b> definit une classe valeur ou handle dans un fichier M.

Nelson prend en charge les proprietes, methodes, evenements, enumerations avec arguments de constructeur, enumerations basees sur des types scalaires numeriques, constantes, l'heritage, les proprietes handle dynamiques via <b>dynamicprops</b>, les methodes separees dans les dossiers <b>@ClassName</b>, les classes de paquet dans les dossiers <b>+package</b> et les declarations continuees avec <b>...</b>.

Les attributs de methode incluent <b>Abstract</b>, <b>Access</b>, <b>Hidden</b>, <b>Sealed</b> et <b>Static</b>. Les attributs de propriete incluent <b>Abstract</b>, <b>Access</b>, <b>GetAccess</b>, <b>SetAccess</b>, <b>AbortSet</b>, <b>Constant</b>, <b>Dependent</b>, <b>GetObservable</b>, <b>SetObservable</b>, <b>Transient</b>, <b>NonCopyable</b>, <b>WeakHandle</b> et les expressions de validation.

<b>AbortSet</b> ignore les notifications et le setter d'une propriete handle lorsque la valeur affectee est egale a la valeur stockee.

Les proprietes <b>Transient</b> sont exclues de <b>struct</b> et des donnees d'objet sauvegardees, puis rechargees avec leur valeur par defaut lorsqu'un constructeur par defaut est disponible. Les proprietes handle <b>NonCopyable</b> retrouvent leur valeur par defaut lors d'une copie via le mixin de copie.

Les proprietes <b>WeakHandle</b> d'une classe handle conservent leurs handles sans maintenir les objets references en vie : un objet qui n'a plus d'autre reference est detruit et la propriete renvoie alors un handle supprime de la meme classe. Elles servent aux references arriere (enfant vers parent, listener vers source) qui formeraient sinon un cycle de references, car les objets d'un cycle de references fortes ne sont jamais detruits. Une propriete <b>WeakHandle</b> doit declarer une validation de classe, par exemple <b>Parent (1,1) Node</b>, et ne peut pas etre <b>Constant</b> ni <b>Dependent</b> ; sans valeur par defaut, elle contient des handles supprimes de la classe et de la taille validees.

La validation de propriete prend en charge les dimensions fixes, les noms de type, les noms de fonctions de validation et les arguments de validation comme <b>mustBeGreaterThan(0)</b>.

Les sous-classes handle peuvent definir des evenements. Les attributs d'evenement incluent <b>Hidden</b>, <b>ListenAccess</b> et <b>NotifyAccess</b>. Les attributs de classe incluent <b>Abstract</b>, <b>ConstructOnLoad</b>, <b>Hidden</b>, <b>InferiorClasses</b> et <b>Sealed</b>.

Les attributs d'acces acceptent public, private, protected, un nom de metaclasse comme <b>?FriendClass</b>, ou une liste de classes comme <b>{?FriendA, ?FriendB}</b>.

Les methodes abstraites et les proprietes abstraites heritees doivent etre implementees par les sous-classes concretes, et les noms de membres herites en conflit sont signales lors de l'analyse de la classe.

Les proprietes abstraites peuvent etre combinees avec les attributs d'acces, de constante, de dependance, de masquage et de validation. Une declaration de propriete abstraite ne doit pas definir de valeur initiale.

Les methodes classdef peuvent acceder aux membres prives de leur classe et aux membres proteges des superclasses. Les membres publics sont retournes par <b>methods</b>, <b>properties</b> et <b>events</b>.

Les formes de methodes prises en charge incluent les constructeurs, methodes d'instance, methodes statiques, definitions simples de methodes sur une seule ligne, dispatch de methodes heritees, declarations scellees et abstraites, methodes externes dans les dossiers <b>@ClassName</b>, accesseurs nommes <b>get.PropertyName</b> et <b>set.PropertyName</b>, hooks d'indexation traditionnels nommes <b>subsref</b>, <b>subsasgn</b> et <b>end</b>, hooks simples d'indexation par point nommes <b>dotReference</b> et <b>dotAssign</b>, hooks simples d'indexation par parentheses <b>parenReference</b> et <b>parenAssign</b> pour les classes valeur et handle, hooks simples d'indexation par accolades nommes <b>braceReference</b> et <b>braceAssign</b>, methodes utilisateur <b>delete</b> pour les classes handle, <b>copy</b> via <b>nelson.mixin.Copyable</b>, et methodes protegees <b>displayScalarObject</b> via <b>nelson.mixin.CustomDisplay</b>.

Les methodes speciales de persistance <b>saveObjectImpl</b> et <b>loadObjectImpl</b> statique peuvent convertir les objets vers et depuis des structures sauvegardees. Elles sont appliquees aux objets scalaires et element par element pour les tableaux d'objets non vides.

Les tableaux d'objets classdef conservent les metadonnees de classe pendant l'affectation indexee. Les nouveaux elements de classe valeur utilisent le constructeur par defaut, et les nouveaux elements de classe handle recoivent des handles par defaut distincts. <b>ClassName.empty(...)</b> cree des tableaux d'objets vides types pour les classes valeur et handle.

Les classes handle qui heritent de <b>dynamicprops</b> peuvent ajouter des proprietes d'instance avec <b>addprop(obj, name)</b> et les supprimer avec <b>rmprop(obj, name)</b> ou <b>delete(descriptor)</b>. Les proprietes dynamiques apparaissent dans <b>isprop</b>, <b>properties</b>, l'acces par champ d'objet et la conversion <b>struct</b>. Le descripteur renvoye par <b>addprop</b> est un handle <b>meta.DynamicProperty</b>.

Les objets classdef fonctionnent avec la sauvegarde/chargement, le debogueur, le profileur et la completion de Nelson. Les hooks de sauvegarde/chargement sont appliques element par element pour les tableaux d'objets, y compris les tableaux imbriques dans des cellules ou des structures. Les tableaux d'objets vides conservent leur classe et leurs dimensions apres sauvegarde et chargement. Les tableaux de handles sont verifies avant l'appel des hooks de sauvegarde afin de detecter les elements invalides.

Les classes d'enumeration numeriques comme <b>classdef Mode < uint32</b> utilisent chaque argument de membre comme valeur numerique stockee, prennent en charge <b>isa(member, 'uint32')</b>, et exposent la conversion vers le type de base comme <b>uint32(member)</b>.

<b>metaclass</b> expose les metadonnees de classe, propriete, methode, evenement et enumeration. Les metadonnees de propriete incluent les expressions de valeur par defaut, expressions de validation, classe de definition, modes d'acces, et indicateurs <b>Constant</b>, <b>Dependent</b>, <b>Abstract</b>, <b>Hidden</b>, <b>GetObservable</b>, <b>SetObservable</b>, <b>AbortSet</b>, <b>Transient</b>, <b>NonCopyable</b> et <b>Dynamic</b>. Les metadonnees de methode incluent la classe de definition, l'acces, et les indicateurs <b>Static</b>, <b>Hidden</b>, <b>Sealed</b> et <b>Abstract</b>. Les metadonnees d'evenement incluent <b>ListenAccess</b>, <b>NotifyAccess</b>, <b>Hidden</b> et les attributs bruts. Les metadonnees d'enumeration incluent les noms de membres, la classe de definition et les arguments de constructeur.

## 💡 Exemples

Classe valeur

```matlab
d = [tempdir(), 'nelson_help_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpPoint.m'], ["classdef NelsonHelpPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "  methods"; "    function obj = NelsonHelpPoint(x, y)"; "      if nargin > 0"; "        obj.X = x;"; "        obj.Y = y;"; "      end"; "    end"; "  end"; "end"]);
addpath(d);
p = NelsonHelpPoint(3, 4);
p.X
```

Aides de sauvegarde/chargement objet

```matlab
d = [tempdir(), 'nelson_help_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpSavedValue.m'], ["classdef NelsonHelpSavedValue"; "  properties"; "    Value = 0"; "  end"; "  methods"; "    function obj = NelsonHelpSavedValue(value)"; "      if nargin > 0"; "        obj.Value = value;"; "      end"; "    end"; "    function data = saveObjectImpl(obj)"; "      data = struct('Value', obj.Value);"; "    end"; "  end"; "  methods (Static)"; "    function obj = loadObjectImpl(data)"; "      obj = NelsonHelpSavedValue(data.Value);"; "    end"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpSavedValue(12);
data = obj.saveObjectImpl();
copy = NelsonHelpSavedValue.loadObjectImpl(data);
fileName = [tempdir(), 'nelson_help_classdef_object.nh5'];
save(fileName, 'obj');
clear obj;
load(fileName);
[copy.Value, obj.Value]
```

## 🔗 Voir aussi

[tutoriel classdef](../interpreter/classdef_tutorial.md), [limitations classdef](../interpreter/classdef_limitations.md), [class](../types/class.md), [isa](../types/isa.md), [methods](../handle/methods.md), [properties](../handle/properties.md), [events](../handle/events.md), [metaclass](../handle/metaclass.md), [dynamicprops](../handle/dynamicprops.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
