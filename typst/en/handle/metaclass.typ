#import "nelson_help.typ": *

= metaclass <handle:metaclass>

Returns classdef metadata.

== Syntax

- #raw("m = metaclass(obj)");
- #raw("m = metaclass(className)");
- #raw("m = ?ClassName");

== Input argument

/ obj: a classdef object or handle
/ className: a class name as a string, including package-qualified names

== Output argument

/ m: a metadata structure

== Description

#strong[metaclass]; returns metadata for a classdef class.

 #strong[?ClassName]; is accepted as compatible shorthand for #strong[metaclass('ClassName')];, including package-qualified class names.

 The returned structure contains #strong[Name];, #strong[SuperclassList];, #strong[PropertyList];, #strong[MethodList];, #strong[EventList];, and #strong[EnumerationMemberList];. #strong[EventList]; contains public events; #strong[EventDetails]; contains all declared events.

 #strong[ClassDetails]; reports raw class attributes and derived flags such as #strong[Abstract];, #strong[Sealed];, and #strong[Handle];.

 For classdef classes, #strong[PropertyDetails];, #strong[MethodDetails];, #strong[EventDetails];, and #strong[EnumerationDetails]; expose Nelson metadata structures for common attributes such as access, static methods, hidden or sealed methods, constant, dependent, and observable properties. Detail structures also include an #strong[Attributes]; cell array with the raw block attributes.

 #strong[ClassDetails]; fields are #strong[Name];, #strong[Attributes];, #strong[Abstract];, #strong[Sealed];, #strong[Handle];, #strong[Hidden];, #strong[ConstructOnLoad];, and #strong[InferiorClasses];. #strong[InferiorClasses]; stores the class attribute expression as text.

 #strong[PropertyDetails]; fields are #strong[Name];, #strong[DefiningClass];, #strong[DefaultValueExpression];, #strong[Access];, #strong[GetAccess];, #strong[SetAccess];, #strong[GetMethod];, #strong[SetMethod];, #strong[Constant];, #strong[Dependent];, #strong[Abstract];, #strong[Hidden];, #strong[GetObservable];, #strong[SetObservable];, #strong[AbortSet];, #strong[Transient];, #strong[NonCopyable];, #strong[Dynamic];, #strong[ValidationExpression];, and #strong[Attributes];.

 When #strong[metaclass]; is called with a scalar object that has dynamic properties, #strong[PropertyList]; and #strong[PropertyDetails]; include those instance properties with #strong[Dynamic]; set to true.

 #strong[MethodDetails]; fields are #strong[Name];, #strong[DefiningClass];, #strong[Access];, #strong[Static];, #strong[Hidden];, #strong[Sealed];, #strong[Abstract];, and #strong[Attributes];.

 #strong[EventDetails]; fields are #strong[Name];, #strong[DefiningClass];, #strong[ListenAccess];, #strong[NotifyAccess];, #strong[Hidden];, and #strong[Attributes];. #strong[EnumerationDetails]; fields are #strong[Name];, #strong[DefiningClass];, and #strong[ConstructorArguments];.


== Example

Read classdef metadata.

``````matlab
d = [tempdir(), 'nelson_help_metaclass/'];
mkdir(d);
filewrite([d, '/NelsonHelpMetaPoint.m'], ["classdef NelsonHelpMetaPoint"; "  properties (Constant)"; "    Dimension = 2"; "  end"; "  properties"; "    X = 0"; "  end"; "  methods"; "    function r = value(obj)"; "      r = obj.X;"; "    end"; "  end"; "  methods (Static)"; "    function obj = origin()"; "      obj = NelsonHelpMetaPoint();"; "    end"; "  end"; "end"]);
addpath(d);
m = ?NelsonHelpMetaPoint;
m.PropertyList
m.ClassDetails.Handle
m.PropertyDetails(find(strcmp({m.PropertyDetails.Name}, 'Dimension'))).Constant
m.PropertyDetails(find(strcmp({m.PropertyDetails.Name}, 'Dimension'))).Attributes
m.MethodDetails(find(strcmp({m.MethodDetails.Name}, 'origin'))).Static
m.MethodDetails(find(strcmp({m.MethodDetails.Name}, 'origin'))).Attributes
``````


== See also

#nlink(<handle:methods>)[methods];, #nlink(<handle:properties>)[properties];, #nlink(<handle:events>)[events];, #nlink(<handle:enumeration>)[enumeration];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [classdef metadata support added],
)

// Author: Allan CORNET
