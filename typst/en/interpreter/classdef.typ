#import "nelson_help.typ": *

= classdef <interpreter:classdef>

Class definition

== Syntax

- #raw("classdef ClassName");
- #raw("classdef ClassName < SuperClass");
- #raw("classdef ClassName < handle");

== Description

#strong[classdef]; defines a value or handle class in an M-file.

 Nelson supports class properties, methods, events, enumerations with constructor arguments, enumerations based on numeric scalar types, constants, inheritance, dynamic handle properties through #strong[dynamicprops];, separate method files in #strong[\@ClassName]; folders, package classes in #strong[+package]; folders, and continued declarations with #strong[...];.

 Method attributes include #strong[Abstract];, #strong[Access];, #strong[Hidden];, #strong[Sealed];, and #strong[Static];. Property attributes include #strong[Abstract];, #strong[Access];, #strong[GetAccess];, #strong[SetAccess];, #strong[AbortSet];, #strong[Constant];, #strong[Dependent];, #strong[GetObservable];, #strong[SetObservable];, #strong[Transient];, #strong[NonCopyable];, #strong[WeakHandle];, and validation expressions.

 #strong[AbortSet]; skips handle-property set notifications and setter execution when the assigned value is equal to the stored value.

 #strong[Transient]; properties are omitted from #strong[struct]; and persisted object data, and reload with their default values when a default constructor is available. #strong[NonCopyable]; handle properties are reset to their default values when copied through the copy mixin.

 #strong[WeakHandle]; properties of a handle class hold their handle values without keeping the referenced objects alive: once an object has no other reference it is destroyed and the property reads back a deleted handle of the same class. Use them for back references (child to parent, listener to source) that would otherwise form a reference cycle, since objects in a cycle of strong references are never destroyed. A #strong[WeakHandle]; property must declare a class validation, for example #strong[Parent (1,1) Node];, and cannot be #strong[Constant]; or #strong[Dependent];; without a default value it starts as deleted handles of the validated class and size.

 Property validation supports fixed dimensions, type names, validator function names, and validator arguments such as #strong[mustBeGreaterThan(0)];.

 Handle subclasses can define events. Event attributes include #strong[Hidden];, #strong[ListenAccess];, and #strong[NotifyAccess];. Class attributes include #strong[Abstract];, #strong[ConstructOnLoad];, #strong[Hidden];, #strong[InferiorClasses];, and #strong[Sealed];.

 Access attributes accept public, private, protected, a single metaclass name such as #strong[?FriendClass];, or a class list such as #strong[{?FriendA, ?FriendB}];.

 Inherited abstract methods and abstract properties must be implemented by concrete subclasses, and conflicting inherited member names are reported when a class is parsed.

 Abstract properties can be combined with access, constant, dependent, hidden, and validation attributes. An abstract property declaration must not define an initial value.

 Classdef methods can access private members of their own class and protected members of superclasses. Public members are returned by #strong[methods];, #strong[properties];, and #strong[events];.

 Supported method forms include constructors, instance methods, static methods, simple single-line method definitions, inherited method dispatch, sealed and abstract declarations, external method files in #strong[\@ClassName]; folders, accessor methods named #strong[get.PropertyName]; and #strong[set.PropertyName];, traditional indexing hooks named #strong[subsref];, #strong[subsasgn];, and #strong[end];, simple dot indexing hooks named #strong[dotReference]; and #strong[dotAssign];, simple parenthesis indexing hooks named #strong[parenReference]; and #strong[parenAssign]; for value and handle classes, simple brace indexing hooks named #strong[braceReference]; and #strong[braceAssign];, user #strong[delete]; methods for handle classes, #strong[copy]; from #strong[nelson.mixin.Copyable];, and protected #strong[displayScalarObject]; methods from #strong[nelson.mixin.CustomDisplay];.

 Special persistence methods #strong[saveObjectImpl]; and static #strong[loadObjectImpl]; can convert objects to and from saved structures. They are applied to scalar objects and element by element for non-empty object arrays.

 Classdef object arrays preserve their class metadata during indexed assignment. Newly created value-class elements use the class default constructor, and newly created handle-class elements receive distinct default handles. #strong[ClassName.empty(...)]; creates typed empty object arrays for value and handle classes.

 Handle classes inheriting from #strong[dynamicprops]; can add instance properties with #strong[addprop(obj, name)]; and remove them with #strong[rmprop(obj, name)]; or #strong[delete(descriptor)];. Dynamic properties appear in #strong[isprop];, #strong[properties];, object field access, and #strong[struct]; conversion. The descriptor returned by #strong[addprop]; is a #strong[meta.DynamicProperty]; handle.

 Classdef objects work with Nelson save\/load, debugger, profiler, and completion support. Save\/load hooks are applied element by element for object arrays, including arrays nested in cells or structs. Empty object arrays keep their class and dimensions when saved and loaded. Handle arrays are checked for invalid elements before save hooks are invoked.

 Numeric enumeration classes such as #strong[classdef Mode \< uint32]; use each member argument as the stored numeric value, support #strong[isa(member, 'uint32')];, and expose the base-type conversion such as #strong[uint32(member)];.

 #strong[metaclass]; exposes class, property, method, event, and enumeration metadata. Property metadata includes default value expressions, validation expressions, defining class, access modes, and flags for #strong[Constant];, #strong[Dependent];, #strong[Abstract];, #strong[Hidden];, #strong[GetObservable];, #strong[SetObservable];, #strong[AbortSet];, #strong[Transient];, #strong[NonCopyable];, and #strong[Dynamic];. Method metadata includes defining class, access, and flags for #strong[Static];, #strong[Hidden];, #strong[Sealed];, and #strong[Abstract];. Event metadata includes #strong[ListenAccess];, #strong[NotifyAccess];, #strong[Hidden];, and raw attributes. Enumeration metadata includes member names, defining class, and constructor arguments.


== Examples

Value class

``````matlab
d = [tempdir(), 'nelson_help_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpPoint.m'], ["classdef NelsonHelpPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "  methods"; "    function obj = NelsonHelpPoint(x, y)"; "      if nargin > 0"; "        obj.X = x;"; "        obj.Y = y;"; "      end"; "    end"; "  end"; "end"]);
addpath(d);
p = NelsonHelpPoint(3, 4);
p.X
``````

Object save\/load helpers

``````matlab
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
``````


== See also

#nlink(<interpreter:classdef_tutorial>)[classdef tutorial];, #nlink(<interpreter:classdef_limitations>)[classdef limitations];, #nlink(<types:class>)[class];, #nlink(<types:isa>)[isa];, #nlink(<handle:methods>)[methods];, #nlink(<handle:properties>)[properties];, #nlink(<handle:events>)[events];, #nlink(<handle:metaclass>)[metaclass];, #nlink(<handle:dynamicprops>)[dynamicprops];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
