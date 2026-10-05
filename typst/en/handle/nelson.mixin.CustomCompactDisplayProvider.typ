#import "nelson_help.typ": *

= nelson.mixin.CustomCompactDisplayProvider <handle:nelson.mixin.CustomCompactDisplayProvider>

Provide a compact display of an object inside containers.

== Syntax

- #raw("classdef MyClass < nelson.mixin.CustomCompactDisplayProvider");

== Input argument

/ obj: an object of a class deriving from nelson.mixin.CustomCompactDisplayProvider.
/ config: display configuration used for compact output.
/ width: maximum display width.

== Output argument

/ rep: compact display representation.

== Description

Derive from #strong[nelson.mixin.CustomCompactDisplayProvider]; to control how an object is shown compactly when it appears inside a container such as a cell or a structure.

 A subclass implements #strong[compactRepresentationForSingleLine(obj, config, width)];, which returns a #strong[nelson.display.CompactDisplayRepresentation]; describing the object on one line. The representation is usually built with the inherited helper #strong[widthConstrainedDataRepresentation(obj, config, width, 'StringArray', text)];, which joins the supplied data with the delimiter defined by #strong[config]; (a #strong[nelson.display.DisplayConfiguration];) and truncates it with the configured ellipsis when it exceeds #strong[width]; characters. When an instance is displayed inside a container such as a cell, a structure field or a #strong[table]; column, the resulting text is used instead of the default #strong[\[1x1 ClassName\]];.

 A companion method #strong[compactRepresentationForColumn(obj, config, width)]; can be implemented for column layouts, and #strong[fullDataRepresentation(obj, config, ...)]; builds an unconstrained representation. When these methods are not overridden, the default representation is used.


== Example

A temperature shown compactly in a cell.

``````matlab
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
``````


== See also

#nlink(<handle:nelson.mixin.CustomDisplay>)[nelson.mixin.CustomDisplay];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
