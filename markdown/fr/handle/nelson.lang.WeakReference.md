# nelson.lang.WeakReference

Reference faible vers un objet handle.

## 📝 Syntaxe

- w = nelson.lang.WeakReference()
- w = nelson.lang.WeakReference(handleObject)
- h = w.Handle
- w.Handle = handleObject
- h = w.ValidHandle

## 📥 Argument d'entrée

- handleObject - un objet handle scalaire.

## 📤 Argument de sortie

- w - un handle scalaire de reference faible.
- h - le handle cible courant, ou un handle invalide type quand la cible n'est pas vivante.

## 📄 Description

<b>nelson.lang.WeakReference</b> stocke une reference faible vers un objet handle scalaire.

La reference faible ne maintient pas la cible en vie. Si toutes les references fortes vers la cible sont effacees, <b>w.Handle</b> retourne un handle invalide avec le nom de classe de la cible.

Si la cible a ete supprimee, <b>w.Handle</b> retourne aussi un handle invalide avec le nom de classe de la cible.

La propriete dependante <b>Handle</b> peut etre lue et affectee. L'affectation remplace la cible faible.

La propriete dependante <b>ValidHandle</b> retourne la cible vivante. Si la cible est absente, expiree ou supprimee, la lecture de <b>ValidHandle</b> leve une erreur.

Une reference faible creee sans entree retourne un handle invalide <b>nelson.lang.HandlePlaceholder</b> via <b>Handle</b>.

Lire <b>Handle</b> depuis une reference faible vivante retourne une valeur handle forte normale. Conserver cette valeur dans une variable maintient la cible en vie jusqu'a ce que cette variable soit effacee ou remplacee.

L'affectation d'un handle invalide est autorisee. La reference faible memorise alors la classe du handle et retourne un handle invalide de cette classe.

La cible affectee doit etre un handle scalaire. Les valeurs numeriques, strings, structs, cellules et tableaux de handles de plus d'un element sont refuses.

Utiliser <b>isvalid(w.Handle)</b> quand une cible absente est une condition ordinaire. Utiliser <b>w.ValidHandle</b> quand une cible absente doit etre traitee comme une erreur.

<b>nelson.lang.WeakReference</b> est elle-meme un objet handle. Supprimer ou effacer l'objet reference faible ne supprime pas l'objet cible.

L'objet reference faible ne stocke que l'identite du handle cible et le nom de classe de repli. Il ne copie pas les proprietes ni les donnees de la cible.

## 💡 Exemples

Creer une reference faible vide.

```matlab
w = nelson.lang.WeakReference();
h = w.Handle;
class(h)
isvalid(h)
```

Observer que la reference faible ne maintient pas la cible en vie.

```matlab
d = [tempdir(), 'nelson_help_weak_reference/'];
mkdir(d);
filewrite([d, '/NelsonHelpWeakTarget.m'], ["classdef NelsonHelpWeakTarget < handle"; "  properties"; "    Value = 10"; "  end"; "end"]);
addpath(d);
target = NelsonHelpWeakTarget();
w = nelson.lang.WeakReference(target);
isvalid(w.Handle)
class(w.Handle)
clear target;
h = w.Handle;
isvalid(h)
class(h)
```

Maintenir la cible en vie avec un handle fort retourne par Handle.

```matlab
d = [tempdir(), 'nelson_help_weak_reference_strong/'];
mkdir(d);
filewrite([d, '/NelsonHelpWeakStrongTarget.m'], ["classdef NelsonHelpWeakStrongTarget < handle"; "  properties"; "    Value = 20"; "  end"; "end"]);
addpath(d);
target = NelsonHelpWeakStrongTarget();
w = nelson.lang.WeakReference(target);
strongTarget = w.Handle;
clear target;
isvalid(w.Handle)
strongTarget.Value
clear strongTarget;
isvalid(w.Handle)
```

Utiliser ValidHandle quand une cible invalide doit etre traitee comme une erreur.

```matlab
d = [tempdir(), 'nelson_help_weak_reference_valid/'];
mkdir(d);
filewrite([d, '/NelsonHelpWeakValidTarget.m'], ["classdef NelsonHelpWeakValidTarget < handle"; "end"]);
addpath(d);
target = NelsonHelpWeakValidTarget();
w = nelson.lang.WeakReference(target);
liveTarget = w.ValidHandle;
clear target liveTarget;
try
  w.ValidHandle;
catch exception
  disp(exception.message)
end
```

Remplacer la cible faible.

```matlab
d = [tempdir(), 'nelson_help_weak_reference_replace/'];
mkdir(d);
filewrite([d, '/NelsonHelpWeakReplaceTarget.m'], ["classdef NelsonHelpWeakReplaceTarget < handle"; "  properties"; "    Name = ''first''"; "  end"; "end"]);
addpath(d);
a = NelsonHelpWeakReplaceTarget();
b = NelsonHelpWeakReplaceTarget();
b.Name = 'second';
w = nelson.lang.WeakReference(a);
w.Handle.Name
w.Handle = b;
w.ValidHandle.Name
delete(b);
isvalid(w.Handle)
```

## 🔗 Voir aussi

[nelson.lang.HandlePlaceholder](../handle/nelson.lang.HandlePlaceholder.md), [nelson.lang.invalidHandle](../handle/nelson.lang.invalidHandle.md), [isvalid](../handle/isvalid.md), [delete](../handle/delete.md), [isa](../types/isa.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
