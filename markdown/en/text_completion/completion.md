# completion

Compute text completion candidates.

## 📝 Syntax

- r = completion(line)

## 📥 Input argument

- line - a string: command line prefix to complete.

## 📤 Output argument

- r - a structure with completion prefix and candidate lists.

## 📄 Description

<b>completion</b> exposes the same completion engine used by the console, GUI terminal, and text editor.

The returned structure contains <b>prefix</b>, <b>showpopup</b>, <b>files</b>, <b>builtin</b>, <b>macros</b>, <b>variables</b>, <b>fields</b>, <b>properties</b>, and <b>methods</b>.

Classdef objects and class names are completed through their public properties and methods, including class constants and static methods.

## 💡 Example

Complete a classdef object.

```matlab
clear classes
d = [tempdir(), 'nelson_help_completion_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpCompletionPoint.m'], ["classdef NelsonHelpCompletionPoint"; "  properties"; "    X = 0"; "  end"; "  properties (Constant)"; "    Dimension = 2"; "  end"; "  methods"; "    function r = value(obj)"; "      r = obj.X;"; "    end"; "  end"; "  methods (Static)"; "    function obj = origin()"; "      obj = NelsonHelpCompletionPoint();"; "    end"; "  end"; "end"]);
addpath(d);
p = NelsonHelpCompletionPoint();
objectCompletion = completion('p.')
classCompletion = completion('NelsonHelpCompletionPoint.')
```

## 🔗 See also

[methods](../handle/methods.md), [properties](../handle/properties.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description                                  |
| ------- | ----------------------------------------------- |
| 2.0.0   | completion engine exposed for tests and scripts |

<!--
## 👤 Author

Allan CORNET
-->
