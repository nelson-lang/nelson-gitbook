# addlistener

Adds a listener callback to a classdef event.

## 📝 Syntax

- lh = addlistener(obj, eventName, callback)
- lh = addlistener(obj, propertyName, propertyEvent, callback)

## 📥 Input argument

- obj - a classdef handle object
- eventName - an event name as a string
- propertyName - a GetObservable or SetObservable property name as a string
- propertyEvent - PreGet, PostGet, PreSet, or PostSet
- callback - a function handle called with source and event data arguments

## 📤 Output argument

- lh - an event.listener handle

## 📄 Description


<b>addlistener</b> registers a callback for a classdef handle object event. 

For observable properties, use <b>PreGet</b>, <b>PostGet</b>, <b>PreSet</b>, or <b>PostSet</b>. Property event data contains <b>EventName</b>, <b>PropertyName</b>, and <b>AffectedObject</b>. 

Delete the returned listener handle to detach it from the source object.

## 💡 Examples

Attach a callback to an event.

```matlab
d = [tempdir(), 'nelson_help_addlistener/'];
mkdir(d);
filewrite([d, '/NelsonHelpAddListenerCounter.m'], ["classdef NelsonHelpAddListenerCounter < handle"; "  events"; "    CountChanged"; "  end"; "  methods"; "    function trigger(obj)"; "      notify(obj, 'CountChanged');"; "    end"; "  end"; "end"]);
addpath(d);
counter = NelsonHelpAddListenerCounter();
lh = addlistener(counter, 'CountChanged', @(src, eventData) disp('changed'));
counter.trigger();
delete(lh);
delete(counter)
```
Attach a callback to an observable property.

```matlab
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
```


## 🔗 See also

[listener](../handle/listener.md), [notify](../handle/notify.md), [events](../handle/events.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | classdef listener support added |

<!--
## 👤 Author

Allan CORNET
-->
