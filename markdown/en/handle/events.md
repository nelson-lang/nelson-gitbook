# events

Returns event names for a classdef object or class.

## 📝 Syntax

- c = events(obj)
- c = events(objArray)
- c = events(className)

## 📥 Input argument

- obj - a classdef object or handle
- objArray - a classdef object array or handle array
- className - a class name as a string, including package-qualified names

## 📤 Output argument

- c - a cell of strings

## 📄 Description

<b>events</b> returns public event names declared by a classdef class.

Hidden events and events with non-public listener access are omitted from the returned list.

For classdef object arrays, <b>events</b> returns events of the array element class.

Handle classes also expose the <b>ObjectBeingDestroyed</b> event.

## 💡 Example

List events declared by a classdef handle array.

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

## 🔗 See also

[addlistener](../handle/addlistener.md), [notify](../handle/notify.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description                           |
| ------- | ---------------------------------------- |
| 2.0.0   | classdef support added                   |
| 2.0.0   | classdef object array support documented |

<!--
## 👤 Author

Allan CORNET
-->
