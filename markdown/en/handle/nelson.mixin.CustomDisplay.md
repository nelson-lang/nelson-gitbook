# nelson.mixin.CustomDisplay

Customize how an object is displayed.

## 📝 Syntax

- classdef MyClass < nelson.mixin.CustomDisplay

## 📥 Input argument

- obj - an object of a class deriving from nelson.mixin.CustomDisplay.

## 📤 Output argument

- txt - custom display text produced by the derived class methods.

## 📄 Description

Derive from <b>nelson.mixin.CustomDisplay</b> to customize how instances of a class are displayed. A subclass may override any of these protected methods and let the default composition render the rest:

<b>getHeader(obj)</b> - the header text (a char vector or a string scalar). Default: the class name followed by <b>with properties:</b>.

<b>getFooter(obj)</b> - the footer text (char or string). Default: empty.

<b>getPropertyGroups(obj)</b> - an array of <b>nelson.mixin.util.PropertyGroup</b> objects describing which properties are shown and how they are grouped. Default: one group with all public properties.

<b>displayScalarObject(obj)</b>, <b>displayNonScalarObject(obj)</b> and <b>displayEmptyObject(obj)</b> - take full control of the display of a scalar object, an object array, or an empty object array respectively.

When none of the display methods is overridden, the object is shown as <b>getHeader</b>, then the property groups, then <b>getFooter</b>.

## 💡 Example

Override only the header and footer.

```matlab
classdef Point < nelson.mixin.CustomDisplay
  properties
    X = 0
    Y = 0
  end
  methods (Access = protected)
    function h = getHeader(obj)
      h = "A 2-D point:";
    end
    function f = getFooter(obj)
      f = '(cartesian)';
    end
  end
end
```

## 🔗 See also

[nelson.mixin.util.PropertyGroup](../types/nelson.mixin.util.PropertyGroup.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
