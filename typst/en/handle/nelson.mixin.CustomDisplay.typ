#import "nelson_help.typ": *

= nelson.mixin.CustomDisplay <handle:nelson.mixin.CustomDisplay>

Customize how an object is displayed.

== Syntax

- #raw("classdef MyClass < nelson.mixin.CustomDisplay");

== Input argument

/ obj: an object of a class deriving from nelson.mixin.CustomDisplay.

== Output argument

/ txt: custom display text produced by the derived class methods.

== Description

Derive from #strong[nelson.mixin.CustomDisplay]; to customize how instances of a class are displayed. A subclass may override any of these protected methods and let the default composition render the rest:

 #strong[getHeader(obj)]; - the header text (a char vector or a string scalar). Default: the class name followed by #strong[with properties:];.

 #strong[getFooter(obj)]; - the footer text (char or string). Default: empty.

 #strong[getPropertyGroups(obj)]; - an array of #strong[nelson.mixin.util.PropertyGroup]; objects describing which properties are shown and how they are grouped. Default: one group with all public properties.

 #strong[displayScalarObject(obj)];, #strong[displayNonScalarObject(obj)]; and #strong[displayEmptyObject(obj)]; - take full control of the display of a scalar object, an object array, or an empty object array respectively.

 When none of the display methods is overridden, the object is shown as #strong[getHeader];, then the property groups, then #strong[getFooter];.


== Example

Override only the header and footer.

``````matlab
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
``````


== See also

#nlink(<types:nelson.mixin.util.PropertyGroup>)[nelson.mixin.util.PropertyGroup];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
