# listener

Cree un ecouteur d'evenement classdef.

## 📝 Syntaxe

- lh = listener(obj, eventName, callback)
- lh = listener(obj, propertyName, propertyEvent, callback)

## 📥 Argument d'entrée

- obj - un objet handle classdef
- eventName - un nom d'evenement sous forme de chaine
- callback - un handle de fonction appele avec les arguments source et donnees d'evenement

## 📤 Argument de sortie

- lh - un handle event.listener

## 📄 Description


<b>listener</b> est un alias de <b>addlistener</b> pour les objets handle classdef et les proprietes observables.

## 💡 Exemple

Creer un ecouteur pour un evenement.

```matlab
d = [tempdir(), 'nelson_help_listener/'];
mkdir(d);
filewrite([d, '/NelsonHelpListenerCounter.m'], ["classdef NelsonHelpListenerCounter < handle"; "  events"; "    CountChanged"; "  end"; "  methods"; "    function trigger(obj)"; "      notify(obj, 'CountChanged');"; "    end"; "  end"; "end"]);
addpath(d);
counter = NelsonHelpListenerCounter();
lh = listener(counter, 'CountChanged', @(src, eventData) disp('changed'));
counter.trigger();
delete(lh);
delete(counter)
```


## 🔗 Voir aussi

[addlistener](../handle/addlistener.md), [notify](../handle/notify.md), [events](../handle/events.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | support des ecouteurs classdef ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
