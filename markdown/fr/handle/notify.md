# notify

Notifie les ecouteurs d'un evenement classdef.

## 📝 Syntaxe

- notify(obj, eventName)
- notify(obj, eventName, eventData)

## 📥 Argument d'entrée

- obj - un objet handle classdef
- eventName - un nom d'evenement sous forme de chaine
- eventData - donnees d'evenement optionnelles transmises aux callbacks

## 📄 Description

<b>notify</b> execute les callbacks enregistres pour un evenement d'objet handle classdef.

Les callbacks recoivent l'objet source et les donnees d'evenement fournies.

## 💡 Exemple

Notifier les ecouteurs d'un evenement.

```matlab
d = [tempdir(), 'nelson_help_notify/'];
mkdir(d);
filewrite([d, '/NelsonHelpNotifyCounter.m'], ["classdef NelsonHelpNotifyCounter < handle"; "  events"; "    CountChanged"; "  end"; "end"]);
addpath(d);
counter = NelsonHelpNotifyCounter();
lh = addlistener(counter, 'CountChanged', @(src, eventData) disp('changed'));
notify(counter, 'CountChanged');
delete(lh);
delete(counter)
```

## 🔗 Voir aussi

[addlistener](../handle/addlistener.md), [events](../handle/events.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description                                       |
| ------- | ---------------------------------------------------- |
| 2.0.0   | support de notification d'evenements classdef ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
