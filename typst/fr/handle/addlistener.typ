#import "nelson_help.typ": *

= addlistener <handle:addlistener>

Ajoute un callback ecouteur a un evenement classdef.

== Syntaxe

- #raw("lh = addlistener(obj, eventName, callback)");
- #raw("lh = addlistener(obj, propertyName, propertyEvent, callback)");

== Argument d'entrée

/ obj: un objet handle classdef
/ eventName: un nom d'evenement sous forme de chaine
/ propertyName: un nom de propriete GetObservable ou SetObservable sous forme de chaine
/ propertyEvent: PreGet, PostGet, PreSet ou PostSet
/ callback: un handle de fonction appele avec les arguments source et donnees d'evenement

== Argument de sortie

/ lh: un handle event.listener

== Description

#strong[addlistener]; enregistre un callback pour un evenement d'objet handle classdef.

 Pour les proprietes observables, utilisez #strong[PreGet];, #strong[PostGet];, #strong[PreSet]; ou #strong[PostSet];. Les donnees d'evenement de propriete contiennent #strong[EventName];, #strong[PropertyName]; et #strong[AffectedObject];.

 Supprimez le handle ecouteur retourne pour le detacher de l'objet source.


== Exemples

Attacher un callback a un evenement.

``````matlab
d = [tempdir(), 'nelson_help_addlistener/'];
mkdir(d);
filewrite([d, '/NelsonHelpAddListenerCounter.m'], ["classdef NelsonHelpAddListenerCounter < handle"; "  events"; "    CountChanged"; "  end"; "  methods"; "    function trigger(obj)"; "      notify(obj, 'CountChanged');"; "    end"; "  end"; "end"]);
addpath(d);
counter = NelsonHelpAddListenerCounter();
lh = addlistener(counter, 'CountChanged', @(src, eventData) disp('changed'));
counter.trigger();
delete(lh);
delete(counter)
``````

Attacher un callback a une propriete observable.

``````matlab
d = [tempdir(), 'nelson_help_addlistener_property/'];
if ~isdir(d)
  mkdir(d);
end
filewrite([d, '/NelsonHelpObservableCounter.m'], ["classdef NelsonHelpObservableCounter < handle"; "  properties (SetObservable)"; "    Count = 0"; "  end"; "  properties"; "    LastEvent = ''"; "  end"; "  methods"; "    function record(obj, eventData)"; "      obj.LastEvent = eventData.EventName;"; "    end"; "  end"; "end"]);
addpath(d);
counter = NelsonHelpObservableCounter();
lh = addlistener(counter, 'Count', 'PostSet', @(src, eventData) src.record(eventData));
counter.Count = 2;
counter.LastEvent
delete(lh);
delete(counter)
``````


== Voir aussi

#nlink(<handle:listener>)[listener];, #nlink(<handle:notify>)[notify];, #nlink(<handle:events>)[events];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [support des ecouteurs classdef ajoute],
)

// Auteur: Allan CORNET
