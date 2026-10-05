#import "nelson_help.typ": *

= dynamicprops <handle:dynamicprops>

Base class for handle objects with instance dynamic properties.

== Syntax

- #raw("classdef ClassName < dynamicprops");
- #raw("descriptor = addprop(obj, name)");
- #raw("obj = rmprop(obj, name)");

== Input argument

/ obj: a scalar classdef handle object that inherits from #strong[dynamicprops];.
/ name: dynamic property name as a character vector or string scalar.

== Output argument

/ descriptor: dynamic property descriptor handle.
/ obj: the same handle object after removing the dynamic property.

== Description

#strong[dynamicprops]; is a classdef base class for handle classes that need properties added to individual object instances at run time.

 #strong[addprop(obj, name)]; adds a dynamic property to one object. The property can then be read and written with field access such as #strong[obj.X];.

 #strong[rmprop(obj, name)]; removes a dynamic property from one object. Declared class properties cannot be removed with #strong[rmprop];.

 Dynamic properties are visible through #strong[isprop];, #strong[properties];, object field access, #strong[metaclass];, and #strong[struct]; conversion.

 The descriptor returned by #strong[addprop]; is a #strong[meta.DynamicProperty]; handle with fields #strong[Name];, #strong[DefiningClass];, #strong[Dynamic];, #strong[Dependent];, #strong[AbortSet];, #strong[GetMethod];, #strong[GetObservable];, #strong[Hidden];, #strong[NonCopyable];, #strong[SetMethod];, #strong[SetObservable];, #strong[Transient];, #strong[GetAccess];, #strong[SetAccess];, and #strong[ValidationExpression];.

 #strong[AbortSet];, #strong[Dependent];, #strong[GetAccess];, #strong[GetMethod];, #strong[GetObservable];, #strong[Hidden];, #strong[NonCopyable];, #strong[SetAccess];, #strong[SetMethod];, #strong[SetObservable];, #strong[Transient];, and #strong[ValidationExpression]; can be changed on the descriptor. #strong[GetAccess]; and #strong[SetAccess]; accept #strong[public];, #strong[private];, or #strong[protected];. #strong[GetMethod]; must be empty or a function handle called as #strong[value \= f(obj)];. #strong[SetMethod]; must be empty or a function handle called as #strong[f(obj, value)];. Dependent dynamic properties use #strong[GetMethod]; and #strong[SetMethod]; instead of stored values. #strong[ValidationExpression]; uses the same property validation syntax as declared properties. Hidden dynamic properties remain accessible through field access and #strong[isprop];, but are omitted from #strong[properties];. Non-copyable dynamic properties are omitted by #strong[copy];. Transient dynamic properties are omitted from #strong[struct]; conversion and saved object data.

 #strong[GetObservable]; enables #strong[PreGet]; and #strong[PostGet]; listeners for the dynamic property. #strong[SetObservable]; enables #strong[PreSet]; and #strong[PostSet]; listeners. #strong[AbortSet]; skips set notifications when the assigned value is unchanged.

 Objects that inherit from #strong[dynamicprops]; raise #strong[PropertyAdded]; after adding a dynamic property and #strong[PropertyRemoved]; before removing one. The event data includes #strong[Source];, #strong[EventName];, and #strong[PropertyName];.

 Deleting the descriptor with #strong[delete(descriptor)]; removes the dynamic property from the source object.


== Example

Add and remove a dynamic property.

``````matlab
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
``````


== See also

#nlink(<interpreter:classdef>)[classdef];, #nlink(<handle:isprop>)[isprop];, #nlink(<handle:properties>)[properties];, #nlink(<handle:metaclass>)[metaclass];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
