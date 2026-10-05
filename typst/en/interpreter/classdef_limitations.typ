#import "nelson_help.typ": *

=  <interpreter:classdef_limitations>

Known classdef limitations.

== Description

Nelson supports many #strong[classdef]; features: value and handle classes, single or multiple inheritance, declared properties, abstract properties, dependent, constant, observable, transient, and non-copyable properties, default values, dimension, type, and function validation (including validators referencing the property name), instance, static, abstract, sealed, and hidden methods, restricted constructors (#strong[Access]; on the constructor), single-line methods, #strong[get.PropertyName]; and #strong[set.PropertyName]; accessors, packages, separate method files, #strong[...]; continuation, events and listeners (with #strong[addlistener]; binding the listener lifetime to the source object), #strong[event.EventData]; subclasses for typed payloads, #strong[ListenAccess];, #strong[NotifyAccess];, and #strong[Hidden]; event attributes, mixin base classes (#strong[nelson.mixin.Copyable];, #strong[nelson.mixin.CustomDisplay];, #strong[nelson.mixin.SetGet];, #strong[nelson.mixin.Heterogeneous];), enumerations with constructor arguments, numeric enumeration base types, subclassing built-in numeric, logical, and char types, object arrays (including #strong[reshape];, #strong[permute];, and #strong[isequal];), #strong[ClassName.empty(...)];, simple indexing hooks, persistence hooks, dynamic handle properties, and metadata queries returning #strong[meta.class]; objects.

 The main help pages document the supported behavior: #strong[classdef]; describes syntax and attributes, #strong[classdef\_tutorial]; gives basic examples, #strong[metaclass]; describes metadata structures, #strong[events]; describes event visibility, and #strong[dynamicprops]; describes instance dynamic properties.

 This page lists documented limits for Nelson. It is a status page, not a complete object-system specification.

 #strong[Known limitations];:

 

#table(
  columns: 3,
  [Area], [Status], [Notes], 
  [Metadata object model], [meta.\* objects], [#strong[metaclass]; and #strong[?ClassName]; return #strong[meta.class]; objects whose #strong[PropertyList];, #strong[MethodList];, #strong[EventList];, and #strong[EnumerationMemberList]; are typed #strong[meta.property];, #strong[meta.method];, #strong[meta.event];, and #strong[meta.EnumerationMember]; arrays. The Nelson-specific #strong[ClassDetails];, #strong[PropertyDetails];, #strong[MethodDetails];, #strong[EventDetails];, and #strong[EnumerationDetails]; structure properties remain available for compatibility. #strong[meta.DynamicProperty]; is available for instance dynamic property descriptors. Static constructors such as #strong[meta.class.fromName]; are not provided.], 
  [Custom indexing method names], [Partial], [Traditional overload hooks such as #strong[subsref];, #strong[subsasgn];, and #strong[end]; use the common overload machinery. Method-name forms #strong[dotReference];, #strong[dotAssign];, #strong[parenReference];, #strong[parenAssign];, #strong[braceReference];, and #strong[braceAssign]; are supported for simple value and handle indexing. Full operation-object indexing customization is not documented as supported.], 
  [Method forms], [Declared or separate], [Methods in the class file, separate method prototypes, and method files in #strong[\@ClassName]; folders are supported. Simple methods written on one line with their body and final #strong[end]; are supported. Abstract methods must remain declarations without a body.], 
  [Class attributes], [Documented], [#strong[Abstract];, #strong[ConstructOnLoad];, #strong[Hidden];, #strong[InferiorClasses];, and #strong[Sealed]; are parsed and exposed in metadata. Associated constraints such as not combining #strong[Sealed]; and #strong[Abstract]; are checked.], 
  [Property attributes], [Documented], [#strong[Access];, #strong[GetAccess];, #strong[SetAccess];, #strong[Abstract];, #strong[AbortSet];, #strong[Constant];, #strong[Dependent];, #strong[GetObservable];, #strong[SetObservable];, #strong[Hidden];, #strong[Transient];, #strong[NonCopyable];, #strong[WeakHandle];, and validation expressions are supported. An abstract property must not define an initial value. #strong[WeakHandle]; is limited to handle classes, and objects linked by a cycle of strong references are not destroyed.], 
  [Method attributes], [Documented], [#strong[Access];, #strong[Abstract];, #strong[Hidden];, #strong[Sealed];, and #strong[Static]; are supported. Private abstract methods are not instantiable in a concrete class; sealed methods cannot be overridden.], 
  [Event attributes], [Documented], [Events can be declared only by handle subclasses. #strong[ListenAccess];, #strong[NotifyAccess];, and #strong[Hidden]; are supported. #strong[events]; and #strong[metaclass(...).EventList]; expose visible public events; #strong[EventDetails]; keeps declared events, including non-public or hidden events.], 
  [Class-list access], [Supported], [Access attributes accept #strong[public];, #strong[private];, #strong[protected];, one class name such as #strong[?FriendClass];, or a list such as #strong[{?FriendA, ?FriendB}];. Access checks apply to properties, methods, and events.], 
  [Object arrays], [Supported], [Value and handle class arrays keep class metadata. Indexed expansion initializes missing elements with the default constructor or distinct default handles. #strong[ClassName.empty(...)]; creates typed empty arrays.], 
  [Persistence], [Supported], [Save and load preserve classdef objects, including objects nested in cells and structs. #strong[saveObjectImpl]; and static #strong[loadObjectImpl]; are applied to scalar objects and element by element for non-empty arrays. #strong[Transient]; properties reload with their default values when possible.], 
  [Subclassing built-in data types], [Numeric, logical, char], [Value classes can inherit from #strong[double];, #strong[single];, integer types, #strong[logical];, and #strong[char];. The base data is initialized with #strong[obj \= obj\@double(...)];; arithmetic, indexing, concatenation, and shape operations return the subclass, conversions return the base type, and type predicates follow the base type. Subclassing container types (#strong[cell];, #strong[struct];) is not supported.], 
  [Dynamic properties], [Handle classes only], [Instance dynamic properties require a handle class that inherits from #strong[dynamicprops];. Dynamic property descriptors support access flags, callbacks, dependent accessors, validation, common storage flags, and persisted stored values. Declared class properties cannot be removed with #strong[rmprop];.], 
  [Table custom properties], [Separate API], [#strong[addprop]; and #strong[rmprop]; also exist for tables with a different signature. That mechanism adds custom properties to table metadata and does not return a #strong[meta.DynamicProperty]; descriptor.], 
  [Completion, debugger, and profiler], [Nelson integration], [Classdef objects are supported by the existing Nelson tools. The exposed metadata interfaces remain the structures documented by #strong[metaclass];.], 
  [Status tracking], [Test based], [Before adding or removing a limitation, verify the current behavior against Nelson classdef tests and the related help pages.], 
)

== See also

#nlink(<interpreter:classdef>)[classdef];, #nlink(<interpreter:classdef_tutorial>)[classdef tutorial];, #nlink(<handle:metaclass>)[metaclass];, #nlink(<handle:properties>)[properties];, #nlink(<handle:events>)[events];, #nlink(<handle:dynamicprops>)[dynamicprops];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
