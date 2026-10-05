#import "nelson_help.typ": *

= classdef tutorial <interpreter:classdef_tutorial>

Step-by-step classdef tutorial.

== Syntax

- #raw("classdef ClassName, properties, methods, end");
- #raw("classdef SubClass < SuperClass");
- #raw("classdef HandleClass < handle");
- #raw("classdef MyClass < handle & nelson.mixin.Copyable");

== Description

A #strong[classdef]; file defines a class template. The file contains one class definition and the file name must match the class name.

 A class definition can contain #strong[properties];, #strong[methods];, #strong[events];, and #strong[enumeration]; blocks. Properties hold object state. Methods implement behavior. Events and listeners are used by handle classes that notify other code when something changes.

 Value classes copy their data when assigned. Handle classes inherit from #strong[handle]; and use reference semantics, so two variables can refer to the same object.

 Nelson also provides lightweight mixin classes under #strong[nelson.mixin];. #strong[nelson.mixin.Copyable]; adds a shallow #strong[copy]; method for handle classes. #strong[nelson.mixin.CustomDisplay]; routes scalar display through a protected #strong[displayScalarObject]; method when the class defines one.

 Property declarations can include a default value, fixed-size and type validation, and validator functions. Accessor methods named #strong[get.PropertyName]; and #strong[set.PropertyName]; implement computed or validated property access. #strong[Dependent]; properties are not stored; #strong[Transient]; properties are not persisted; #strong[NonCopyable]; handle properties are reset by the copy mixin.

 The generated static method #strong[ClassName.empty(...)]; creates typed empty arrays. Indexed expansion initializes missing value-class elements with default property values and missing handle-class elements with distinct default handles.

 #strong[saveObjectImpl]; and static #strong[loadObjectImpl]; customize persistence. For non-empty arrays they run element by element. Empty arrays keep their type and size without invoking scalar hooks, and handle arrays are checked for invalid elements before save hooks run.


== Examples

Create a first value class in a file named MyClass.m.

``````matlab

classdef MyClass
  properties
    Value
  end

  methods
    function obj = MyClass(val)
      if nargin > 0
        obj.Value = val;
      end
    end
  end
end

a = MyClass(42);
disp(a.Value)

``````

Use private storage and a dependent property.

``````matlab

classdef Person
  properties (Access = private)
    AgeInternal = 0
  end

  properties
    Name (1,1) string = ""
  end

  properties (Dependent)
    Age
  end

  methods
    function obj = Person(name, age)
      if nargin > 0
        obj.Name = name;
        obj.AgeInternal = age;
      end
    end

    function v = get.Age(obj)
      v = obj.AgeInternal;
    end
  end
end

p = Person("Ada", 31);
p.Age

``````

Inherit from a superclass and call its constructor and method.

``````matlab

classdef Vehicle
  properties
    Name (1,1) string = "vehicle"
  end

  methods
    function obj = Vehicle(name)
      if nargin > 0
        obj.Name = name;
      end
    end

    function start(obj)
      fprintf("%s started\n", obj.Name);
    end
  end
end

classdef Car < Vehicle
  properties
    Brand (1,1) string = "unknown"
  end

  methods
    function obj = Car(name, brand)
      obj@Vehicle(name);
      if nargin > 1
        obj.Brand = brand;
      end
    end

    function start(obj)
      start@Vehicle(obj);
      fprintf("Car brand: %s\n", obj.Brand);
    end
  end
end

c = Car("MyCar", "Toyota");
c.start();

``````

Use handle reference semantics.

``````matlab

classdef Counter < handle
  properties
    Value (1,1) double = 0
  end

  methods
    function increment(obj)
      obj.Value = obj.Value + 1;
    end
  end
end

a = Counter();
b = a;
a.increment();
disp(b.Value)

``````

Add shallow copy support to a handle class.

``````matlab

classdef Config < handle & nelson.mixin.Copyable
  properties
    Mode (1,1) string = "default"
    Options struct = struct()
  end
end

c1 = Config();
c1.Mode = "fast";
c2 = copy(c1);
c2.Mode = "safe";

``````

Customize scalar object display.

``````matlab

classdef Point2D < nelson.mixin.CustomDisplay
  properties
    X (1,1) double = 0
    Y (1,1) double = 0
  end

  methods
    function obj = Point2D(x, y)
      if nargin > 0
        obj.X = x;
        obj.Y = y;
      end
    end
  end

  methods (Access = protected)
    function displayScalarObject(obj)
      fprintf("Point2D: (%.2f, %.2f)\n", obj.X, obj.Y);
    end
  end
end

p = Point2D(3.5, 4.2);
p

``````


== See also

#nlink(<interpreter:classdef>)[classdef];, #nlink(<handle:methods>)[methods];, #nlink(<handle:properties>)[properties];, #nlink(<handle:metaclass>)[metaclass];, #nlink(<handle:events>)[events];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [classdef tutorial added],
)

// Author: Allan CORNET
