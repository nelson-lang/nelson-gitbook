#import "nelson_help.typ": *

= classdef <interpreter:classdef>

Définition de classe

== Syntaxe

- #raw("classdef ClassName");
- #raw("classdef ClassName < SuperClass");
- #raw("classdef ClassName < handle");

== Description

#strong[classdef]; definit une classe valeur ou handle dans un fichier M.

 Nelson prend en charge les proprietes, methodes, evenements, enumerations avec arguments de constructeur, enumerations basees sur des types scalaires numeriques, constantes, l'heritage, les proprietes handle dynamiques via #strong[dynamicprops];, les methodes separees dans les dossiers #strong[\@ClassName];, les classes de paquet dans les dossiers #strong[+package]; et les declarations continuees avec #strong[...];.

 Les attributs de methode incluent #strong[Abstract];, #strong[Access];, #strong[Hidden];, #strong[Sealed]; et #strong[Static];. Les attributs de propriete incluent #strong[Abstract];, #strong[Access];, #strong[GetAccess];, #strong[SetAccess];, #strong[AbortSet];, #strong[Constant];, #strong[Dependent];, #strong[GetObservable];, #strong[SetObservable];, #strong[Transient];, #strong[NonCopyable];, #strong[WeakHandle]; et les expressions de validation.

 #strong[AbortSet]; ignore les notifications et le setter d'une propriete handle lorsque la valeur affectee est egale a la valeur stockee.

 Les proprietes #strong[Transient]; sont exclues de #strong[struct]; et des donnees d'objet sauvegardees, puis rechargees avec leur valeur par defaut lorsqu'un constructeur par defaut est disponible. Les proprietes handle #strong[NonCopyable]; retrouvent leur valeur par defaut lors d'une copie via le mixin de copie.

 Les proprietes #strong[WeakHandle]; d'une classe handle conservent leurs handles sans maintenir les objets references en vie : un objet qui n'a plus d'autre reference est detruit et la propriete renvoie alors un handle supprime de la meme classe. Elles servent aux references arriere (enfant vers parent, listener vers source) qui formeraient sinon un cycle de references, car les objets d'un cycle de references fortes ne sont jamais detruits. Une propriete #strong[WeakHandle]; doit declarer une validation de classe, par exemple #strong[Parent (1,1) Node];, et ne peut pas etre #strong[Constant]; ni #strong[Dependent]; ; sans valeur par defaut, elle contient des handles supprimes de la classe et de la taille validees.

 La validation de propriete prend en charge les dimensions fixes, les noms de type, les noms de fonctions de validation et les arguments de validation comme #strong[mustBeGreaterThan(0)];.

 Les sous-classes handle peuvent definir des evenements. Les attributs d'evenement incluent #strong[Hidden];, #strong[ListenAccess]; et #strong[NotifyAccess];. Les attributs de classe incluent #strong[Abstract];, #strong[ConstructOnLoad];, #strong[Hidden];, #strong[InferiorClasses]; et #strong[Sealed];.

 Les attributs d'acces acceptent public, private, protected, un nom de metaclasse comme #strong[?FriendClass];, ou une liste de classes comme #strong[{?FriendA, ?FriendB}];.

 Les methodes abstraites et les proprietes abstraites heritees doivent etre implementees par les sous-classes concretes, et les noms de membres herites en conflit sont signales lors de l'analyse de la classe.

 Les proprietes abstraites peuvent etre combinees avec les attributs d'acces, de constante, de dependance, de masquage et de validation. Une declaration de propriete abstraite ne doit pas definir de valeur initiale.

 Les methodes classdef peuvent acceder aux membres prives de leur classe et aux membres proteges des superclasses. Les membres publics sont retournes par #strong[methods];, #strong[properties]; et #strong[events];.

 Les formes de methodes prises en charge incluent les constructeurs, methodes d'instance, methodes statiques, definitions simples de methodes sur une seule ligne, dispatch de methodes heritees, declarations scellees et abstraites, methodes externes dans les dossiers #strong[\@ClassName];, accesseurs nommes #strong[get.PropertyName]; et #strong[set.PropertyName];, hooks d'indexation traditionnels nommes #strong[subsref];, #strong[subsasgn]; et #strong[end];, hooks simples d'indexation par point nommes #strong[dotReference]; et #strong[dotAssign];, hooks simples d'indexation par parentheses #strong[parenReference]; et #strong[parenAssign]; pour les classes valeur et handle, hooks simples d'indexation par accolades nommes #strong[braceReference]; et #strong[braceAssign];, methodes utilisateur #strong[delete]; pour les classes handle, #strong[copy]; via #strong[nelson.mixin.Copyable];, et methodes protegees #strong[displayScalarObject]; via #strong[nelson.mixin.CustomDisplay];.

 Les methodes speciales de persistance #strong[saveObjectImpl]; et #strong[loadObjectImpl]; statique peuvent convertir les objets vers et depuis des structures sauvegardees. Elles sont appliquees aux objets scalaires et element par element pour les tableaux d'objets non vides.

 Les tableaux d'objets classdef conservent les metadonnees de classe pendant l'affectation indexee. Les nouveaux elements de classe valeur utilisent le constructeur par defaut, et les nouveaux elements de classe handle recoivent des handles par defaut distincts. #strong[ClassName.empty(...)]; cree des tableaux d'objets vides types pour les classes valeur et handle.

 Les classes handle qui heritent de #strong[dynamicprops]; peuvent ajouter des proprietes d'instance avec #strong[addprop(obj, name)]; et les supprimer avec #strong[rmprop(obj, name)]; ou #strong[delete(descriptor)];. Les proprietes dynamiques apparaissent dans #strong[isprop];, #strong[properties];, l'acces par champ d'objet et la conversion #strong[struct];. Le descripteur renvoye par #strong[addprop]; est un handle #strong[meta.DynamicProperty];.

 Les objets classdef fonctionnent avec la sauvegarde\/chargement, le debogueur, le profileur et la completion de Nelson. Les hooks de sauvegarde\/chargement sont appliques element par element pour les tableaux d'objets, y compris les tableaux imbriques dans des cellules ou des structures. Les tableaux d'objets vides conservent leur classe et leurs dimensions apres sauvegarde et chargement. Les tableaux de handles sont verifies avant l'appel des hooks de sauvegarde afin de detecter les elements invalides.

 Les classes d'enumeration numeriques comme #strong[classdef Mode \< uint32]; utilisent chaque argument de membre comme valeur numerique stockee, prennent en charge #strong[isa(member, 'uint32')];, et exposent la conversion vers le type de base comme #strong[uint32(member)];.

 #strong[metaclass]; expose les metadonnees de classe, propriete, methode, evenement et enumeration. Les metadonnees de propriete incluent les expressions de valeur par defaut, expressions de validation, classe de definition, modes d'acces, et indicateurs #strong[Constant];, #strong[Dependent];, #strong[Abstract];, #strong[Hidden];, #strong[GetObservable];, #strong[SetObservable];, #strong[AbortSet];, #strong[Transient];, #strong[NonCopyable]; et #strong[Dynamic];. Les metadonnees de methode incluent la classe de definition, l'acces, et les indicateurs #strong[Static];, #strong[Hidden];, #strong[Sealed]; et #strong[Abstract];. Les metadonnees d'evenement incluent #strong[ListenAccess];, #strong[NotifyAccess];, #strong[Hidden]; et les attributs bruts. Les metadonnees d'enumeration incluent les noms de membres, la classe de definition et les arguments de constructeur.


== Exemples

Classe valeur

``````matlab
d = [tempdir(), 'nelson_help_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpPoint.m'], ["classdef NelsonHelpPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "  methods"; "    function obj = NelsonHelpPoint(x, y)"; "      if nargin > 0"; "        obj.X = x;"; "        obj.Y = y;"; "      end"; "    end"; "  end"; "end"]);
addpath(d);
p = NelsonHelpPoint(3, 4);
p.X
``````

Aides de sauvegarde\/chargement objet

``````matlab
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
``````


== Voir aussi

#nlink(<interpreter:classdef_tutorial>)[tutoriel classdef];, #nlink(<interpreter:classdef_limitations>)[limitations classdef];, #nlink(<types:class>)[class];, #nlink(<types:isa>)[isa];, #nlink(<handle:methods>)[methods];, #nlink(<handle:properties>)[properties];, #nlink(<handle:events>)[events];, #nlink(<handle:metaclass>)[metaclass];, #nlink(<handle:dynamicprops>)[dynamicprops];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
