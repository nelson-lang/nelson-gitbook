# handle

Classe de base des objets à sémantique de référence.

## 📝 Syntaxe

- classdef MaClasse < handle

## 📥 Argument d'entrée

- aucun - handle s'utilise comme super-classe et ne s'appelle pas directement.

## 📤 Argument de sortie

- aucun - handle s'utilise comme super-classe et ne s'appelle pas directement.

## 📄 Description


<b>handle</b> est la classe de base abstraite dont dérive toute classe handle. Une classe déclarée par <b>classdef MaClasse < handle</b> possède une sémantique de référence : les variables qui contiennent l'objet sont des références vers une unique instance sous-jacente, et non des copies indépendantes. 

Affecter un objet handle à une autre variable, ou le passer à une fonction, copie la référence et non les données. Toutes les références observent alors les mêmes valeurs de propriétés, et une modification effectuée via une référence est visible via toutes les autres références au même objet. 

Ce comportement diffère de celui d'une classe valeur (le cas par défaut lorsqu'aucune super-classe n'est indiquée), où chaque affectation produit une copie indépendante. 

Dériver de <b>handle</b> fournit également les services communs aux handles : gestion du cycle de vie avec <b>delete</b> et <b>isvalid</b>, comparaison d'égalité et relationnelle des références, ainsi que les mécanismes de réflexion, d'événements, d'écouteurs et de propriétés dynamiques exposés par les classes handle associées. 

Pour obtenir une copie indépendante d'un objet handle, dérivez la classe de <b>nelson.mixin.Copyable</b> et utilisez sa méthode <b>copy</b>.

## 💡 Exemple

Sémantique de référence d'une classe handle.

```matlab
d = [tempdir(), 'nelson_help_handle/'];
mkdir(d);
filewrite([d, '/NelsonHelpHandleCounter.m'], ["classdef NelsonHelpHandleCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpHandleCounter();
b = a;         % b reference le meme objet que a
b.Count = 5;
a.Count        % 5 : a et b partagent la meme instance
isvalid(a)     % true
delete(a);
isvalid(b)     % false : l'objet partage a ete detruit
```


## 🔗 Voir aussi

[classdef](../interpreter/classdef.md), [nelson.mixin.Copyable](../handle/nelson.mixin.Copyable.md), [isvalid](../handle/isvalid.md), [delete](../handle/delete.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
