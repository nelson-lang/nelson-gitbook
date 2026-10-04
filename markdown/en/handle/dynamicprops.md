# dynamicprops

Base class for handle objects with instance dynamic properties.

## 📝 Syntax

- classdef ClassName < dynamicprops
- descriptor = addprop(obj, name)
- obj = rmprop(obj, name)

## 📥 Input argument

- obj - a scalar classdef handle object that inherits from <b>dynamicprops</b>.
- name - dynamic property name as a character vector or string scalar.

## 📤 Output argument

- descriptor - dynamic property descriptor handle.
- obj - the same handle object after removing the dynamic property.

## 📄 Description

<b>dynamicprops</b> is a classdef base class for handle classes that need properties added to individual object instances at run time.

<b>addprop(obj, name)</b> adds a dynamic property to one object. The property can then be read and written with field access such as <b>obj.X</b>.

<b>rmprop(obj, name)</b> removes a dynamic property from one object. Declared class properties cannot be removed with <b>rmprop</b>.

Dynamic properties are visible through <b>isprop</b>, <b>properties</b>, object field access, <b>metaclass</b>, and <b>struct</b> conversion.

The descriptor returned by <b>addprop</b> is a <b>meta.DynamicProperty</b> handle with fields <b>Name</b>, <b>DefiningClass</b>, <b>Dynamic</b>, <b>Dependent</b>, <b>AbortSet</b>, <b>GetMethod</b>, <b>GetObservable</b>, <b>Hidden</b>, <b>NonCopyable</b>, <b>SetMethod</b>, <b>SetObservable</b>, <b>Transient</b>, <b>GetAccess</b>, <b>SetAccess</b>, and <b>ValidationExpression</b>.

<b>AbortSet</b>, <b>Dependent</b>, <b>GetAccess</b>, <b>GetMethod</b>, <b>GetObservable</b>, <b>Hidden</b>, <b>NonCopyable</b>, <b>SetAccess</b>, <b>SetMethod</b>, <b>SetObservable</b>, <b>Transient</b>, and <b>ValidationExpression</b> can be changed on the descriptor. <b>GetAccess</b> and <b>SetAccess</b> accept <b>public</b>, <b>private</b>, or <b>protected</b>. <b>GetMethod</b> must be empty or a function handle called as <b>value = f(obj)</b>. <b>SetMethod</b> must be empty or a function handle called as <b>f(obj, value)</b>. Dependent dynamic properties use <b>GetMethod</b> and <b>SetMethod</b> instead of stored values. <b>ValidationExpression</b> uses the same property validation syntax as declared properties. Hidden dynamic properties remain accessible through field access and <b>isprop</b>, but are omitted from <b>properties</b>. Non-copyable dynamic properties are omitted by <b>copy</b>. Transient dynamic properties are omitted from <b>struct</b> conversion and saved object data.

<b>GetObservable</b> enables <b>PreGet</b> and <b>PostGet</b> listeners for the dynamic property. <b>SetObservable</b> enables <b>PreSet</b> and <b>PostSet</b> listeners. <b>AbortSet</b> skips set notifications when the assigned value is unchanged.

Objects that inherit from <b>dynamicprops</b> raise <b>PropertyAdded</b> after adding a dynamic property and <b>PropertyRemoved</b> before removing one. The event data includes <b>Source</b>, <b>EventName</b>, and <b>PropertyName</b>.

Deleting the descriptor with <b>delete(descriptor)</b> removes the dynamic property from the source object.

## 💡 Example

Add and remove a dynamic property.

```matlab
d = [tempdir(), 'nelson_help_dynamicprops/'];
if ~isdir(d)
  mkdir(d);
end
filewrite([d, '/NelsonHelpDynamicProps.m'], ["classdef NelsonHelpDynamicProps < dynamicprops"; "  properties"; "    Base = 1"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpDynamicProps();
listenerAdded = addlistener(obj, 'PropertyAdded', @(src, eventData) disp(eventData.PropertyName));
listenerRemoved = addlistener(obj, 'PropertyRemoved', @(src, eventData) disp(eventData.PropertyName));
descriptor = addprop(obj, 'Extra');
obj.Extra = 42;
descriptor.Name
descriptor.Dynamic
descriptor.SetObservable = true;
setListener = addlistener(obj, 'Extra', 'PostSet', @(src, eventData) disp(eventData.PropertyName));
obj.Extra = 43;
descriptor.GetMethod = @(x) x.Base + 10;
obj.Extra
descriptor.GetMethod = [];
descriptor.Dependent = true;
descriptor.SetMethod = @(x, value) value;
descriptor.GetMethod = @(x) x.Base;
obj.Extra = 3;
obj.Extra
descriptor.Dependent = false;
descriptor.GetMethod = [];
descriptor.SetMethod = [];
descriptor.SetAccess = 'private';
descriptor.SetAccess = 'public';
descriptor.ValidationExpression = '(1, 1) double {mustBePositive}';
descriptor.NonCopyable = true;
descriptor.Hidden = true;
isprop(obj, 'Extra')
properties(obj)
descriptor.Hidden = false;
descriptor.Transient = true;
struct(obj)
delete(descriptor);
delete(listenerAdded);
delete(listenerRemoved);
delete(setListener);
isprop(obj, 'Extra')
clear obj descriptor;
rmpath(d);
rmdir(d, 's')
```

## 🔗 See also

[classdef](../interpreter/classdef.md), [isprop](../handle/isprop.md), [properties](../handle/properties.md), [metaclass](../handle/metaclass.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
