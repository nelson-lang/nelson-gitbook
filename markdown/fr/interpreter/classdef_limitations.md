# 

Limitations connues de classdef.

## 📄 Description


Nelson prend en charge de nombreuses fonctionnalites <b>classdef</b> : classes valeur et handle, heritage simple ou multiple, proprietes declarees, proprietes abstraites, proprietes dependantes, constantes, observables, transitoires et non copiables, valeurs par defaut, validation de dimensions, de types et de fonctions, methodes d'instance, statiques, abstraites, scellees et cachees, methodes sur une ligne, accesseurs <b>get.PropertyName</b> et <b>set.PropertyName</b>, paquets, fichiers de methodes separes, continuation <b>...</b>, evenements et listeners, attributs <b>ListenAccess</b>, <b>NotifyAccess</b> et <b>Hidden</b>, enumerations avec arguments de constructeur, types de base numeriques pour les enumerations, tableaux d'objets, <b>ClassName.empty(...)</b>, hooks d'indexation simples, hooks de persistance, proprietes handle dynamiques et requetes de metadonnees. 

Les pages d'aide principales documentent les comportements pris en charge : <b>classdef</b> decrit la syntaxe et les attributs, <b>classdef\_tutorial</b> donne les exemples de base, <b>metaclass</b> decrit les structures de metadonnees, <b>events</b> decrit la visibilite des evenements, et <b>dynamicprops</b> decrit les proprietes dynamiques d'instance. 

Cette page liste les limites documentees pour Nelson. C'est une page d'etat, pas une specification complete du systeme objet. 

<b>Limitations connues</b> : 

| Domaine | Etat | Notes | 
| --- | --- | --- | 
| Modele d'objets de metadonnees | Structures Nelson | **metaclass** et **?NomDeClasse** renvoient des objets **meta.class** dont **PropertyList**, **MethodList**, **EventList** et **EnumerationMemberList** sont des tableaux types **meta.property**, **meta.method**, **meta.event** et **meta.EnumerationMember**. Les proprietes de structures **ClassDetails**, **PropertyDetails**, **MethodDetails**, **EventDetails** et **EnumerationDetails** restent disponibles pour compatibilite. **meta.DynamicProperty** est disponible pour les descripteurs de proprietes dynamiques d'instance. Les constructeurs statiques comme **meta.class.fromName** ne sont pas fournis. | 
| Noms de methodes d'indexation personnalisee | Partiel | Les hooks traditionnels comme **subsref**, **subsasgn** et **end** utilisent le mecanisme commun de surcharge. Les formes **dotReference**, **dotAssign**, **parenReference**, **parenAssign**, **braceReference** et **braceAssign** sont prises en charge pour une indexation simple des classes valeur et handle. La personnalisation complete par objets d'operation n'est pas documentee comme prise en charge. | 
| Formes de methodes | Declarees ou separees | Les methodes dans le fichier de classe, les prototypes de methodes separees et les fichiers de methodes dans **@ClassName** sont pris en charge. Les methodes simples ecrites sur une seule ligne avec leur corps et leur **end** final sont prises en charge. Les methodes abstraites doivent rester des declarations sans corps. | 
| Attributs de classe | Documentes | **Abstract**, **ConstructOnLoad**, **Hidden**, **InferiorClasses** et **Sealed** sont analyses et exposes dans les metadonnees. Les contraintes associees comme l'interdiction de combiner **Sealed** et **Abstract** sont verifiees. | 
| Attributs de proprietes | Documentes | **Access**, **GetAccess**, **SetAccess**, **Abstract**, **AbortSet**, **Constant**, **Dependent**, **GetObservable**, **SetObservable**, **Hidden**, **Transient**, **NonCopyable**, **WeakHandle** et les expressions de validation sont pris en charge. Une propriete abstraite ne doit pas definir de valeur initiale. **WeakHandle** est limite aux classes handle, et les objets lies par un cycle de references fortes ne sont pas detruits. | 
| Attributs de methodes | Documentes | **Access**, **Abstract**, **Hidden**, **Sealed** et **Static** sont pris en charge. Les methodes abstraites privees ne sont pas instanciables dans une classe concrete; les methodes scellees ne peuvent pas etre remplacees. | 
| Attributs d'evenements | Documentes | Les evenements ne peuvent etre declares que par des sous-classes handle. **ListenAccess**, **NotifyAccess** et **Hidden** sont pris en charge. **events** et **metaclass(...).EventList** exposent les evenements publics visibles; **EventDetails** conserve les evenements declares, y compris les evenements non publics ou caches. | 
| Acces par listes de classes | Pris en charge | Les attributs d'acces acceptent **public**, **private**, **protected**, un nom de classe comme **?FriendClass** ou une liste comme **{?FriendA, ?FriendB}**. Les controles d'acces s'appliquent aux proprietes, methodes et evenements. | 
| Tableaux d'objets | Pris en charge | Les tableaux de classes valeur et handle conservent les metadonnees de classe. L'expansion indexee initialise les elements manquants avec le constructeur par defaut ou des handles par defaut distincts. **ClassName.empty(...)** cree des tableaux vides types. | 
| Persistance | Pris en charge | La sauvegarde et le chargement conservent les objets classdef, y compris dans les cellules et structures. **saveObjectImpl** et **loadObjectImpl** statique sont appliques aux objets scalaires et element par element pour les tableaux non vides. Les proprietes **Transient** sont rechargees avec leurs valeurs par defaut lorsque c'est possible. | 
| Heritage depuis les types de donnees integres | Numerique, logical, char | Les classes valeur peuvent heriter de **double**, **single**, des types entiers, **logical** et **char**. Les donnees de base sont initialisees avec **obj = obj@double(...)**; l'arithmetique, l'indexation, la concatenation et les operations de forme renvoient la sous-classe, les conversions renvoient le type de base et les predicats de type suivent le type de base. Le sous-classement des conteneurs (**cell**, **struct**) n'est pas pris en charge. | 
| Proprietes dynamiques | Classes handle uniquement | Les proprietes dynamiques d'instance exigent une classe handle qui herite de **dynamicprops**. Les descripteurs dynamiques prennent en charge les indicateurs d'acces, les callbacks, les accesseurs dependants, la validation, les indicateurs de stockage courants et les valeurs stockees persistantes. Les proprietes declarees dans la classe ne peuvent pas etre supprimees avec **rmprop**. | 
| Proprietes dynamiques de table | API distincte | Les fonctions **addprop** et **rmprop** existent aussi pour les tables avec une signature differente. Ce mecanisme ajoute des proprietes personnalisees aux metadonnees de table et ne renvoie pas de descripteur **meta.DynamicProperty**. | 
| Completion, debogueur et profileur | Integration Nelson | Les objets classdef sont pris en charge par les outils Nelson existants. Les interfaces de metadonnees exposees restent les structures documentees par **metaclass**. | 
| Suivi d'etat | Base sur les tests | Avant d'ajouter ou de retirer une limitation, verifier le comportement courant avec les tests classdef de Nelson et les pages d'aide liees. | 




## 🔗 Voir aussi

[classdef](../interpreter/classdef.md), [tutoriel classdef](../interpreter/classdef_tutorial.md), [metaclass](../handle/metaclass.md), [properties](../handle/properties.md), [events](../handle/events.md), [dynamicprops](../handle/dynamicprops.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
