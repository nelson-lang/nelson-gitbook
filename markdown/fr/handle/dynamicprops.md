# dynamicprops

Classe de base pour objets handle avec proprietes dynamiques d'instance.

## 📝 Syntaxe

- classdef ClassName < dynamicprops
- descriptor = addprop(obj, name)
- obj = rmprop(obj, name)

## 📥 Argument d'entrée

- obj - un objet handle classdef scalaire qui herite de <b>dynamicprops</b>.
- name - nom de propriete dynamique sous forme de vecteur de caracteres ou de chaine scalaire.

## 📤 Argument de sortie

- descriptor - descripteur handle de propriete dynamique.
- obj - le meme objet handle apres suppression de la propriete dynamique.

## 📄 Description

<b>dynamicprops</b> est une classe de base classdef pour les classes handle qui ajoutent des proprietes a des instances individuelles pendant l'execution.

<b>addprop(obj, name)</b> ajoute une propriete dynamique a un objet. La propriete peut ensuite etre lue et ecrite avec l'acces par champ, par exemple <b>obj.X</b>.

<b>rmprop(obj, name)</b> supprime une propriete dynamique d'un objet. Les proprietes declarees par la classe ne peuvent pas etre supprimees avec <b>rmprop</b>.

Les proprietes dynamiques sont visibles via <b>isprop</b>, <b>properties</b>, l'acces par champ d'objet, <b>metaclass</b> et la conversion <b>struct</b>.

Le descripteur renvoye par <b>addprop</b> est un handle <b>meta.DynamicProperty</b> avec les champs <b>Name</b>, <b>DefiningClass</b>, <b>Dynamic</b>, <b>Dependent</b>, <b>AbortSet</b>, <b>GetMethod</b>, <b>GetObservable</b>, <b>Hidden</b>, <b>NonCopyable</b>, <b>SetMethod</b>, <b>SetObservable</b>, <b>Transient</b>, <b>GetAccess</b>, <b>SetAccess</b> et <b>ValidationExpression</b>.

<b>AbortSet</b>, <b>Dependent</b>, <b>GetAccess</b>, <b>GetMethod</b>, <b>GetObservable</b>, <b>Hidden</b>, <b>NonCopyable</b>, <b>SetAccess</b>, <b>SetMethod</b>, <b>SetObservable</b>, <b>Transient</b> et <b>ValidationExpression</b> peuvent etre modifies sur le descripteur. <b>GetAccess</b> et <b>SetAccess</b> acceptent <b>public</b>, <b>private</b> ou <b>protected</b>. <b>GetMethod</b> doit etre vide ou un handle de fonction appele comme <b>value = f(obj)</b>. <b>SetMethod</b> doit etre vide ou un handle de fonction appele comme <b>f(obj, value)</b>. Les proprietes dynamiques dependantes utilisent <b>GetMethod</b> et <b>SetMethod</b> au lieu de valeurs stockees. <b>ValidationExpression</b> utilise la meme syntaxe de validation que les proprietes declarees. Les proprietes dynamiques masquees restent accessibles par champ et via <b>isprop</b>, mais sont omises de <b>properties</b>. Les proprietes dynamiques non copiables sont omises par <b>copy</b>. Les proprietes dynamiques transitoires sont omises de la conversion <b>struct</b> et des donnees d'objet sauvegardees.

<b>GetObservable</b> active les listeners <b>PreGet</b> et <b>PostGet</b> pour la propriete dynamique. <b>SetObservable</b> active les listeners <b>PreSet</b> et <b>PostSet</b>. <b>AbortSet</b> evite les notifications de modification lorsque la valeur assignee est inchangee.

Les objets qui heritent de <b>dynamicprops</b> emettent <b>PropertyAdded</b> apres l'ajout d'une propriete dynamique et <b>PropertyRemoved</b> avant sa suppression. Les donnees d'evenement contiennent <b>Source</b>, <b>EventName</b> et <b>PropertyName</b>.

La suppression du descripteur avec <b>delete(descriptor)</b> supprime la propriete dynamique de l'objet source.

## 💡 Exemple

Ajouter et supprimer une propriete dynamique.

```matlab
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
```

## 🔗 Voir aussi

[classdef](../interpreter/classdef.md), [isprop](../handle/isprop.md), [properties](../handle/properties.md), [metaclass](../handle/metaclass.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
