# nelson.mixin.CustomCompactDisplayProvider

Provide a compact display of an object inside containers.

## 📝 Syntax

- classdef MyClass < nelson.mixin.CustomCompactDisplayProvider

## 📥 Input argument

- obj - an object of a class deriving from nelson.mixin.CustomCompactDisplayProvider.
- config - display configuration used for compact output.
- width - maximum display width.

## 📤 Output argument

- rep - compact display representation.

## 📄 Description


Derive from <b>nelson.mixin.CustomCompactDisplayProvider</b> to control how an object is shown compactly when it appears inside a container such as a cell or a structure. 

A subclass implements <b>compactRepresentationForSingleLine(obj, config, width)</b>, which returns a <b>nelson.display.CompactDisplayRepresentation</b> describing the object on one line. The representation is usually built with the inherited helper <b>widthConstrainedDataRepresentation(obj, config, width, 'StringArray', text)</b>, which joins the supplied data with the delimiter defined by <b>config</b> (a <b>nelson.display.DisplayConfiguration</b>) and truncates it with the configured ellipsis when it exceeds <b>width</b> characters. When an instance is displayed inside a container such as a cell, a structure field or a <b>table</b> column, the resulting text is used instead of the default <b>[1x1 ClassName]</b>. 

A companion method <b>compactRepresentationForColumn(obj, config, width)</b> can be implemented for column layouts, and <b>fullDataRepresentation(obj, config, ...)</b> builds an unconstrained representation. When these methods are not overridden, the default representation is used.

## 💡 Example

A temperature shown compactly in a cell.

```matlab
classdef Temp < nelson.mixin.CustomCompactDisplayProvider
  properties
    Celsius = 0
  end
  methods
    function obj = Temp(c)
      if nargin > 0
        obj.Celsius = c;
      end
    end
    function rep = compactRepresentationForSingleLine(obj, config, width)
      txt = [num2str(obj.Celsius), ' degC'];
      rep = widthConstrainedDataRepresentation(obj, config, width, 'StringArray', string(txt));
    end
  end
end
c = {Temp(20), Temp(37)}   % shows {20 degC}  {37 degC}
```


## 🔗 See also

[nelson.mixin.CustomDisplay](../handle/nelson.mixin.CustomDisplay.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
