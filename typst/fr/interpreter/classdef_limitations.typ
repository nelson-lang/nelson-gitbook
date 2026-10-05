#import "nelson_help.typ": *

=  <interpreter:classdef_limitations>

Limitations connues de classdef.

== Description

Nelson prend en charge de nombreuses fonctionnalites #strong[classdef]; : classes valeur et handle, heritage simple ou multiple, proprietes declarees, proprietes abstraites, proprietes dependantes, constantes, observables, transitoires et non copiables, valeurs par defaut, validation de dimensions, de types et de fonctions, methodes d'instance, statiques, abstraites, scellees et cachees, methodes sur une ligne, accesseurs #strong[get.PropertyName]; et #strong[set.PropertyName];, paquets, fichiers de methodes separes, continuation #strong[...];, evenements et listeners, attributs #strong[ListenAccess];, #strong[NotifyAccess]; et #strong[Hidden];, enumerations avec arguments de constructeur, types de base numeriques pour les enumerations, tableaux d'objets, #strong[ClassName.empty(...)];, hooks d'indexation simples, hooks de persistance, proprietes handle dynamiques et requetes de metadonnees.

 Les pages d'aide principales documentent les comportements pris en charge : #strong[classdef]; decrit la syntaxe et les attributs, #strong[classdef\_tutorial]; donne les exemples de base, #strong[metaclass]; decrit les structures de metadonnees, #strong[events]; decrit la visibilite des evenements, et #strong[dynamicprops]; decrit les proprietes dynamiques d'instance.

 Cette page liste les limites documentees pour Nelson. C'est une page d'etat, pas une specification complete du systeme objet.

 #strong[Limitations connues]; :

 

#table(
  columns: 3,
  [Domaine], [Etat], [Notes], 
  [Modele d'objets de metadonnees], [Structures Nelson], [#strong[metaclass]; et #strong[?NomDeClasse]; renvoient des objets #strong[meta.class]; dont #strong[PropertyList];, #strong[MethodList];, #strong[EventList]; et #strong[EnumerationMemberList]; sont des tableaux types #strong[meta.property];, #strong[meta.method];, #strong[meta.event]; et #strong[meta.EnumerationMember];. Les proprietes de structures #strong[ClassDetails];, #strong[PropertyDetails];, #strong[MethodDetails];, #strong[EventDetails]; et #strong[EnumerationDetails]; restent disponibles pour compatibilite. #strong[meta.DynamicProperty]; est disponible pour les descripteurs de proprietes dynamiques d'instance. Les constructeurs statiques comme #strong[meta.class.fromName]; ne sont pas fournis.], 
  [Noms de methodes d'indexation personnalisee], [Partiel], [Les hooks traditionnels comme #strong[subsref];, #strong[subsasgn]; et #strong[end]; utilisent le mecanisme commun de surcharge. Les formes #strong[dotReference];, #strong[dotAssign];, #strong[parenReference];, #strong[parenAssign];, #strong[braceReference]; et #strong[braceAssign]; sont prises en charge pour une indexation simple des classes valeur et handle. La personnalisation complete par objets d'operation n'est pas documentee comme prise en charge.], 
  [Formes de methodes], [Declarees ou separees], [Les methodes dans le fichier de classe, les prototypes de methodes separees et les fichiers de methodes dans #strong[\@ClassName]; sont pris en charge. Les methodes simples ecrites sur une seule ligne avec leur corps et leur #strong[end]; final sont prises en charge. Les methodes abstraites doivent rester des declarations sans corps.], 
  [Attributs de classe], [Documentes], [#strong[Abstract];, #strong[ConstructOnLoad];, #strong[Hidden];, #strong[InferiorClasses]; et #strong[Sealed]; sont analyses et exposes dans les metadonnees. Les contraintes associees comme l'interdiction de combiner #strong[Sealed]; et #strong[Abstract]; sont verifiees.], 
  [Attributs de proprietes], [Documentes], [#strong[Access];, #strong[GetAccess];, #strong[SetAccess];, #strong[Abstract];, #strong[AbortSet];, #strong[Constant];, #strong[Dependent];, #strong[GetObservable];, #strong[SetObservable];, #strong[Hidden];, #strong[Transient];, #strong[NonCopyable];, #strong[WeakHandle]; et les expressions de validation sont pris en charge. Une propriete abstraite ne doit pas definir de valeur initiale. #strong[WeakHandle]; est limite aux classes handle, et les objets lies par un cycle de references fortes ne sont pas detruits.], 
  [Attributs de methodes], [Documentes], [#strong[Access];, #strong[Abstract];, #strong[Hidden];, #strong[Sealed]; et #strong[Static]; sont pris en charge. Les methodes abstraites privees ne sont pas instanciables dans une classe concrete; les methodes scellees ne peuvent pas etre remplacees.], 
  [Attributs d'evenements], [Documentes], [Les evenements ne peuvent etre declares que par des sous-classes handle. #strong[ListenAccess];, #strong[NotifyAccess]; et #strong[Hidden]; sont pris en charge. #strong[events]; et #strong[metaclass(...).EventList]; exposent les evenements publics visibles; #strong[EventDetails]; conserve les evenements declares, y compris les evenements non publics ou caches.], 
  [Acces par listes de classes], [Pris en charge], [Les attributs d'acces acceptent #strong[public];, #strong[private];, #strong[protected];, un nom de classe comme #strong[?FriendClass]; ou une liste comme #strong[{?FriendA, ?FriendB}];. Les controles d'acces s'appliquent aux proprietes, methodes et evenements.], 
  [Tableaux d'objets], [Pris en charge], [Les tableaux de classes valeur et handle conservent les metadonnees de classe. L'expansion indexee initialise les elements manquants avec le constructeur par defaut ou des handles par defaut distincts. #strong[ClassName.empty(...)]; cree des tableaux vides types.], 
  [Persistance], [Pris en charge], [La sauvegarde et le chargement conservent les objets classdef, y compris dans les cellules et structures. #strong[saveObjectImpl]; et #strong[loadObjectImpl]; statique sont appliques aux objets scalaires et element par element pour les tableaux non vides. Les proprietes #strong[Transient]; sont rechargees avec leurs valeurs par defaut lorsque c'est possible.], 
  [Heritage depuis les types de donnees integres], [Numerique, logical, char], [Les classes valeur peuvent heriter de #strong[double];, #strong[single];, des types entiers, #strong[logical]; et #strong[char];. Les donnees de base sont initialisees avec #strong[obj \= obj\@double(...)];; l'arithmetique, l'indexation, la concatenation et les operations de forme renvoient la sous-classe, les conversions renvoient le type de base et les predicats de type suivent le type de base. Le sous-classement des conteneurs (#strong[cell];, #strong[struct];) n'est pas pris en charge.], 
  [Proprietes dynamiques], [Classes handle uniquement], [Les proprietes dynamiques d'instance exigent une classe handle qui herite de #strong[dynamicprops];. Les descripteurs dynamiques prennent en charge les indicateurs d'acces, les callbacks, les accesseurs dependants, la validation, les indicateurs de stockage courants et les valeurs stockees persistantes. Les proprietes declarees dans la classe ne peuvent pas etre supprimees avec #strong[rmprop];.], 
  [Proprietes dynamiques de table], [API distincte], [Les fonctions #strong[addprop]; et #strong[rmprop]; existent aussi pour les tables avec une signature differente. Ce mecanisme ajoute des proprietes personnalisees aux metadonnees de table et ne renvoie pas de descripteur #strong[meta.DynamicProperty];.], 
  [Completion, debogueur et profileur], [Integration Nelson], [Les objets classdef sont pris en charge par les outils Nelson existants. Les interfaces de metadonnees exposees restent les structures documentees par #strong[metaclass];.], 
  [Suivi d'etat], [Base sur les tests], [Avant d'ajouter ou de retirer une limitation, verifier le comportement courant avec les tests classdef de Nelson et les pages d'aide liees.], 
)

== Voir aussi

#nlink(<interpreter:classdef>)[classdef];, #nlink(<interpreter:classdef_tutorial>)[tutoriel classdef];, #nlink(<handle:metaclass>)[metaclass];, #nlink(<handle:properties>)[properties];, #nlink(<handle:events>)[events];, #nlink(<handle:dynamicprops>)[dynamicprops];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
