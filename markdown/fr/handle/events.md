# events

Renvoie les noms des evenements d'un objet ou d'une classe classdef.

## 📝 Syntaxe

- c = events(obj)
- c = events(objArray)
- c = events(className)

## 📥 Argument d'entrée

- obj - un objet classdef ou handle
- objArray - un tableau d'objets classdef ou de handles
- className - un nom de classe sous forme de chaine, y compris les noms qualifies par paquet

## 📤 Argument de sortie

- c - un tableau (cell) de chaines

## 📄 Description

<b>events</b> renvoie les noms des evenements publics declares par une classe classdef.

Les evenements caches et les evenements avec un acces d'ecoute non public sont omis de la liste retournee.

Pour les tableaux d'objets classdef, <b>events</b> renvoie les evenements de la classe des elements.

Les classes handle exposent aussi l'evenement <b>ObjectBeingDestroyed</b>.

## 💡 Exemple

Lister les evenements declares par un tableau de handles classdef.

```matlab
clear classes
d = [tempdir(), 'nelson_help_events/'];
mkdir(d);
filewrite([d, '/NelsonHelpEventCounter.m'], ["classdef NelsonHelpEventCounter < handle"; "  events"; "    CountChanged"; "  end"; "  methods"; "    function trigger(obj)"; "      notify(obj, 'CountChanged');"; "    end"; "  end"; "end"]);
addpath(d);
a = NelsonHelpEventCounter();
b = NelsonHelpEventCounter();
e = events([a, b]);
delete([a, b])
```

## 🔗 Voir aussi

[addlistener](../handle/addlistener.md), [notify](../handle/notify.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description                                   |
| ------- | ------------------------------------------------ |
| 2.0.0   | support classdef ajoute                          |
| 2.0.0   | support des tableaux d'objets classdef documente |

<!--
## 👤 Auteur

Allan CORNET
-->
