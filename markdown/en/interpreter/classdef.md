# classdef

Class definition

## 📝 Syntax

- classdef ClassName
- classdef ClassName < SuperClass
- classdef ClassName < handle

## 📄 Description

<b>classdef</b> defines a value or handle class in an M-file.

Nelson supports class properties, methods, events, enumerations with constructor arguments, enumerations based on numeric scalar types, constants, inheritance, dynamic handle properties through <b>dynamicprops</b>, separate method files in <b>@ClassName</b> folders, package classes in <b>+package</b> folders, and continued declarations with <b>...</b>.

Method attributes include <b>Abstract</b>, <b>Access</b>, <b>Hidden</b>, <b>Sealed</b>, and <b>Static</b>. Property attributes include <b>Abstract</b>, <b>Access</b>, <b>GetAccess</b>, <b>SetAccess</b>, <b>AbortSet</b>, <b>Constant</b>, <b>Dependent</b>, <b>GetObservable</b>, <b>SetObservable</b>, <b>Transient</b>, <b>NonCopyable</b>, <b>WeakHandle</b>, and validation expressions.

<b>AbortSet</b> skips handle-property set notifications and setter execution when the assigned value is equal to the stored value.

<b>Transient</b> properties are omitted from <b>struct</b> and persisted object data, and reload with their default values when a default constructor is available. <b>NonCopyable</b> handle properties are reset to their default values when copied through the copy mixin.

<b>WeakHandle</b> properties of a handle class hold their handle values without keeping the referenced objects alive: once an object has no other reference it is destroyed and the property reads back a deleted handle of the same class. Use them for back references (child to parent, listener to source) that would otherwise form a reference cycle, since objects in a cycle of strong references are never destroyed. A <b>WeakHandle</b> property must declare a class validation, for example <b>Parent (1,1) Node</b>, and cannot be <b>Constant</b> or <b>Dependent</b>; without a default value it starts as deleted handles of the validated class and size.

Property validation supports fixed dimensions, type names, validator function names, and validator arguments such as <b>mustBeGreaterThan(0)</b>.

Handle subclasses can define events. Event attributes include <b>Hidden</b>, <b>ListenAccess</b>, and <b>NotifyAccess</b>. Class attributes include <b>Abstract</b>, <b>ConstructOnLoad</b>, <b>Hidden</b>, <b>InferiorClasses</b>, and <b>Sealed</b>.

Access attributes accept public, private, protected, a single metaclass name such as <b>?FriendClass</b>, or a class list such as <b>{?FriendA, ?FriendB}</b>.

Inherited abstract methods and abstract properties must be implemented by concrete subclasses, and conflicting inherited member names are reported when a class is parsed.

Abstract properties can be combined with access, constant, dependent, hidden, and validation attributes. An abstract property declaration must not define an initial value.

Classdef methods can access private members of their own class and protected members of superclasses. Public members are returned by <b>methods</b>, <b>properties</b>, and <b>events</b>.

Supported method forms include constructors, instance methods, static methods, simple single-line method definitions, inherited method dispatch, sealed and abstract declarations, external method files in <b>@ClassName</b> folders, accessor methods named <b>get.PropertyName</b> and <b>set.PropertyName</b>, traditional indexing hooks named <b>subsref</b>, <b>subsasgn</b>, and <b>end</b>, simple dot indexing hooks named <b>dotReference</b> and <b>dotAssign</b>, simple parenthesis indexing hooks named <b>parenReference</b> and <b>parenAssign</b> for value and handle classes, simple brace indexing hooks named <b>braceReference</b> and <b>braceAssign</b>, user <b>delete</b> methods for handle classes, <b>copy</b> from <b>nelson.mixin.Copyable</b>, and protected <b>displayScalarObject</b> methods from <b>nelson.mixin.CustomDisplay</b>.

Special persistence methods <b>saveObjectImpl</b> and static <b>loadObjectImpl</b> can convert objects to and from saved structures. They are applied to scalar objects and element by element for non-empty object arrays.

Classdef object arrays preserve their class metadata during indexed assignment. Newly created value-class elements use the class default constructor, and newly created handle-class elements receive distinct default handles. <b>ClassName.empty(...)</b> creates typed empty object arrays for value and handle classes.

Handle classes inheriting from <b>dynamicprops</b> can add instance properties with <b>addprop(obj, name)</b> and remove them with <b>rmprop(obj, name)</b> or <b>delete(descriptor)</b>. Dynamic properties appear in <b>isprop</b>, <b>properties</b>, object field access, and <b>struct</b> conversion. The descriptor returned by <b>addprop</b> is a <b>meta.DynamicProperty</b> handle.

Classdef objects work with Nelson save/load, debugger, profiler, and completion support. Save/load hooks are applied element by element for object arrays, including arrays nested in cells or structs. Empty object arrays keep their class and dimensions when saved and loaded. Handle arrays are checked for invalid elements before save hooks are invoked.

Numeric enumeration classes such as <b>classdef Mode < uint32</b> use each member argument as the stored numeric value, support <b>isa(member, 'uint32')</b>, and expose the base-type conversion such as <b>uint32(member)</b>.

<b>metaclass</b> exposes class, property, method, event, and enumeration metadata. Property metadata includes default value expressions, validation expressions, defining class, access modes, and flags for <b>Constant</b>, <b>Dependent</b>, <b>Abstract</b>, <b>Hidden</b>, <b>GetObservable</b>, <b>SetObservable</b>, <b>AbortSet</b>, <b>Transient</b>, <b>NonCopyable</b>, and <b>Dynamic</b>. Method metadata includes defining class, access, and flags for <b>Static</b>, <b>Hidden</b>, <b>Sealed</b>, and <b>Abstract</b>. Event metadata includes <b>ListenAccess</b>, <b>NotifyAccess</b>, <b>Hidden</b>, and raw attributes. Enumeration metadata includes member names, defining class, and constructor arguments.

## 💡 Examples

Value class

```matlab
d = [tempdir(), 'nelson_help_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpPoint.m'], ["classdef NelsonHelpPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "  methods"; "    function obj = NelsonHelpPoint(x, y)"; "      if nargin > 0"; "        obj.X = x;"; "        obj.Y = y;"; "      end"; "    end"; "  end"; "end"]);
addpath(d);
p = NelsonHelpPoint(3, 4);
p.X
```

Object save/load helpers

```matlab
d = [tempdir(), 'nelson_help_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpSavedValue.m'], ["classdef NelsonHelpSavedValue"; "  properties"; "    Value = 0"; "  end"; "  methods"; "    function obj = NelsonHelpSavedValue(value)"; "      if nargin > 0"; "        obj.Value = value;"; "      end"; "    end"; "    function data = saveObjectImpl(obj)"; "      data = struct('Value', obj.Value);"; "    end"; "  end"; "  methods (Static)"; "    function obj = loadObjectImpl(data)"; "      obj = NelsonHelpSavedValue(data.Value);"; "    end"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpSavedValue(12);
data = obj.saveObjectImpl();
copy = NelsonHelpSavedValue.loadObjectImpl(data);
fileName = [tempdir(), 'nelson_help_classdef_object.nh5'];
save(fileName, 'obj');
clear obj;
load(fileName);
[copy.Value, obj.Value]
```

## 🔗 See also

[classdef tutorial](../interpreter/classdef_tutorial.md), [classdef limitations](../interpreter/classdef_limitations.md), [class](../types/class.md), [isa](../types/isa.md), [methods](../handle/methods.md), [properties](../handle/properties.md), [events](../handle/events.md), [metaclass](../handle/metaclass.md), [dynamicprops](../handle/dynamicprops.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
