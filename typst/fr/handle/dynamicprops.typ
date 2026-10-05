#import "nelson_help.typ": *

= dynamicprops <handle:dynamicprops>

Classe de base pour objets handle avec proprietes dynamiques d'instance.

== Syntaxe

- #raw("classdef ClassName < dynamicprops");
- #raw("descriptor = addprop(obj, name)");
- #raw("obj = rmprop(obj, name)");

== Argument d'entrée

/ obj: un objet handle classdef scalaire qui herite de #strong[dynamicprops];.
/ name: nom de propriete dynamique sous forme de vecteur de caracteres ou de chaine scalaire.

== Argument de sortie

/ descriptor: descripteur handle de propriete dynamique.
/ obj: le meme objet handle apres suppression de la propriete dynamique.

== Description

#strong[dynamicprops]; est une classe de base classdef pour les classes handle qui ajoutent des proprietes a des instances individuelles pendant l'execution.

 #strong[addprop(obj, name)]; ajoute une propriete dynamique a un objet. La propriete peut ensuite etre lue et ecrite avec l'acces par champ, par exemple #strong[obj.X];.

 #strong[rmprop(obj, name)]; supprime une propriete dynamique d'un objet. Les proprietes declarees par la classe ne peuvent pas etre supprimees avec #strong[rmprop];.

 Les proprietes dynamiques sont visibles via #strong[isprop];, #strong[properties];, l'acces par champ d'objet, #strong[metaclass]; et la conversion #strong[struct];.

 Le descripteur renvoye par #strong[addprop]; est un handle #strong[meta.DynamicProperty]; avec les champs #strong[Name];, #strong[DefiningClass];, #strong[Dynamic];, #strong[Dependent];, #strong[AbortSet];, #strong[GetMethod];, #strong[GetObservable];, #strong[Hidden];, #strong[NonCopyable];, #strong[SetMethod];, #strong[SetObservable];, #strong[Transient];, #strong[GetAccess];, #strong[SetAccess]; et #strong[ValidationExpression];.

 #strong[AbortSet];, #strong[Dependent];, #strong[GetAccess];, #strong[GetMethod];, #strong[GetObservable];, #strong[Hidden];, #strong[NonCopyable];, #strong[SetAccess];, #strong[SetMethod];, #strong[SetObservable];, #strong[Transient]; et #strong[ValidationExpression]; peuvent etre modifies sur le descripteur. #strong[GetAccess]; et #strong[SetAccess]; acceptent #strong[public];, #strong[private]; ou #strong[protected];. #strong[GetMethod]; doit etre vide ou un handle de fonction appele comme #strong[value \= f(obj)];. #strong[SetMethod]; doit etre vide ou un handle de fonction appele comme #strong[f(obj, value)];. Les proprietes dynamiques dependantes utilisent #strong[GetMethod]; et #strong[SetMethod]; au lieu de valeurs stockees. #strong[ValidationExpression]; utilise la meme syntaxe de validation que les proprietes declarees. Les proprietes dynamiques masquees restent accessibles par champ et via #strong[isprop];, mais sont omises de #strong[properties];. Les proprietes dynamiques non copiables sont omises par #strong[copy];. Les proprietes dynamiques transitoires sont omises de la conversion #strong[struct]; et des donnees d'objet sauvegardees.

 #strong[GetObservable]; active les listeners #strong[PreGet]; et #strong[PostGet]; pour la propriete dynamique. #strong[SetObservable]; active les listeners #strong[PreSet]; et #strong[PostSet];. #strong[AbortSet]; evite les notifications de modification lorsque la valeur assignee est inchangee.

 Les objets qui heritent de #strong[dynamicprops]; emettent #strong[PropertyAdded]; apres l'ajout d'une propriete dynamique et #strong[PropertyRemoved]; avant sa suppression. Les donnees d'evenement contiennent #strong[Source];, #strong[EventName]; et #strong[PropertyName];.

 La suppression du descripteur avec #strong[delete(descriptor)]; supprime la propriete dynamique de l'objet source.


== Exemple

Ajouter et supprimer une propriete dynamique.

``````matlab
d = [tempdir(), 'nelson_help_dynamicprops/'];
if ~isdir(d)
  mkdir(d);
end
filewrite([d, '/NelsonHelpDynamicProps.m'], ["classdef NelsonHelpDynamicProps < dynamicprops"; "  properties"; "    Base = 1"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpDynamicProps();
listenerAdded = addlistener(obj, 'PropertyAdded', @(src, eventData) disp(eventData.PropertyName));
listenerRemoved = addlistener(obj, 'PropertyRemoved', @(src, eventData) disp(eventData.PropertyName));
descriptor = addprop(obj, 'Extra');
obj.Extra = 42;
descriptor.Name
descriptor.Dynamic
descriptor.SetObservable = true;
setListener = addlistener(obj, 'Extra', 'PostSet', @(src, eventData) disp(eventData.PropertyName));
obj.Extra = 43;
descriptor.GetMethod = @(x) x.Base + 10;
obj.Extra
descriptor.GetMethod = [];
descriptor.Dependent = true;
descriptor.SetMethod = @(x, value) value;
descriptor.GetMethod = @(x) x.Base;
obj.Extra = 3;
obj.Extra
descriptor.Dependent = false;
descriptor.GetMethod = [];
descriptor.SetMethod = [];
descriptor.SetAccess = 'private';
descriptor.SetAccess = 'public';
descriptor.ValidationExpression = '(1, 1) double {mustBePositive}';
descriptor.NonCopyable = true;
descriptor.Hidden = true;
isprop(obj, 'Extra')
properties(obj)
descriptor.Hidden = false;
descriptor.Transient = true;
struct(obj)
delete(descriptor);
delete(listenerAdded);
delete(listenerRemoved);
delete(setListener);
isprop(obj, 'Extra')
clear obj descriptor;
rmpath(d);
rmdir(d, 's')
``````


== Voir aussi

#nlink(<interpreter:classdef>)[classdef];, #nlink(<handle:isprop>)[isprop];, #nlink(<handle:properties>)[properties];, #nlink(<handle:metaclass>)[metaclass];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
