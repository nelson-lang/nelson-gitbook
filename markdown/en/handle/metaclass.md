# metaclass

Returns classdef metadata.

## 📝 Syntax

- m = metaclass(obj)
- m = metaclass(className)
- m = ?ClassName

## 📥 Input argument

- obj - a classdef object or handle
- className - a class name as a string, including package-qualified names

## 📤 Output argument

- m - a metadata structure

## 📄 Description


<b>metaclass</b> returns metadata for a classdef class. 

<b>?ClassName</b> is accepted as compatible shorthand for <b>metaclass('ClassName')</b>, including package-qualified class names. 

The returned structure contains <b>Name</b>, <b>SuperclassList</b>, <b>PropertyList</b>, <b>MethodList</b>, <b>EventList</b>, and <b>EnumerationMemberList</b>. <b>EventList</b> contains public events; <b>EventDetails</b> contains all declared events. 

<b>ClassDetails</b> reports raw class attributes and derived flags such as <b>Abstract</b>, <b>Sealed</b>, and <b>Handle</b>. 

For classdef classes, <b>PropertyDetails</b>, <b>MethodDetails</b>, <b>EventDetails</b>, and <b>EnumerationDetails</b> expose Nelson metadata structures for common attributes such as access, static methods, hidden or sealed methods, constant, dependent, and observable properties. Detail structures also include an <b>Attributes</b> cell array with the raw block attributes. 

<b>ClassDetails</b> fields are <b>Name</b>, <b>Attributes</b>, <b>Abstract</b>, <b>Sealed</b>, <b>Handle</b>, <b>Hidden</b>, <b>ConstructOnLoad</b>, and <b>InferiorClasses</b>. <b>InferiorClasses</b> stores the class attribute expression as text. 

<b>PropertyDetails</b> fields are <b>Name</b>, <b>DefiningClass</b>, <b>DefaultValueExpression</b>, <b>Access</b>, <b>GetAccess</b>, <b>SetAccess</b>, <b>GetMethod</b>, <b>SetMethod</b>, <b>Constant</b>, <b>Dependent</b>, <b>Abstract</b>, <b>Hidden</b>, <b>GetObservable</b>, <b>SetObservable</b>, <b>AbortSet</b>, <b>Transient</b>, <b>NonCopyable</b>, <b>Dynamic</b>, <b>ValidationExpression</b>, and <b>Attributes</b>. 

When <b>metaclass</b> is called with a scalar object that has dynamic properties, <b>PropertyList</b> and <b>PropertyDetails</b> include those instance properties with <b>Dynamic</b> set to true. 

<b>MethodDetails</b> fields are <b>Name</b>, <b>DefiningClass</b>, <b>Access</b>, <b>Static</b>, <b>Hidden</b>, <b>Sealed</b>, <b>Abstract</b>, and <b>Attributes</b>. 

<b>EventDetails</b> fields are <b>Name</b>, <b>DefiningClass</b>, <b>ListenAccess</b>, <b>NotifyAccess</b>, <b>Hidden</b>, and <b>Attributes</b>. <b>EnumerationDetails</b> fields are <b>Name</b>, <b>DefiningClass</b>, and <b>ConstructorArguments</b>.

## 💡 Example

Read classdef metadata.

```matlab
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
```


## 🔗 See also

[methods](../handle/methods.md), [properties](../handle/properties.md), [events](../handle/events.md), [enumeration](../handle/enumeration.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | classdef metadata support added |

<!--
## 👤 Author

Allan CORNET
-->
