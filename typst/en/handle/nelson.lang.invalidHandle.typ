#import "nelson_help.typ": *

= nelson.lang.invalidHandle <handle:nelson.lang.invalidHandle>

Create an invalid handle with a specified handle class.

== Syntax

- #raw("h = nelson.lang.invalidHandle(classname)");
- #raw("h = nelson.lang.invalidHandle(classname, n)");
- #raw("h = nelson.lang.invalidHandle(classname, m, n, ...)");
- #raw("h = nelson.lang.invalidHandle(classname, sz)");

== Input argument

/ classname: name of a handle class as a character vector or string scalar.
/ n, m, sz: nonnegative integer dimensions for the returned handle array.

== Output argument

/ h: an invalid handle scalar or handle array whose class is #strong[classname];.

== Description

#strong[nelson.lang.invalidHandle]; creates a handle value that has the requested handle class but is not valid.

 #strong[isvalid(h)]; returns false for every element of the result.

 The class name must identify a classdef handle class. Value classes and unknown class names raise an error.

 With no dimension arguments, the result is a scalar. With one numeric scalar dimension #strong[n];, the result is #strong[n];-by-#strong[n];. With multiple scalar dimensions or a numeric vector #strong[sz];, the result has those dimensions.

 This function is useful for APIs that need to preserve the class of a missing handle target.

 The returned value behaves like a handle array for class, size, concatenation with compatible handle arrays, and #strong[isvalid];. It has no live object behind it.

 Invalid handles are not made valid later. To obtain a live handle, construct a new object of the same class.

 All dimensions must be nonnegative integer values. Empty dimension vectors create an empty handle array.

 A single scalar dimension follows the same convention as common array constructors: #strong[nelson.lang.invalidHandle(classname, 3)]; returns a 3-by-3 array.

 The class is loaded before the handle array is created. This allows user-defined handle classes on the path to be used by name.

 Use #strong[nelson.lang.HandlePlaceholder]; when no more specific handle class is available.


== Examples

Create an invalid placeholder handle.

``````matlab
h = nelson.lang.invalidHandle('nelson.lang.HandlePlaceholder');
class(h)
isvalid(h)
``````

Create an invalid handle array.

``````matlab
h = nelson.lang.invalidHandle('nelson.lang.HandlePlaceholder', 2, 3);
size(h)
isvalid(h)
``````

Create an invalid handle array from a size vector.

``````matlab
h = nelson.lang.invalidHandle("nelson.lang.HandlePlaceholder", [1 4]);
size(h)
class(h)
isvalid(h)
``````

Use a user-defined handle class.

``````matlab
d = [tempdir(), 'nelson_help_invalid_handle/'];
mkdir(d);
filewrite([d, '/NelsonHelpInvalidHandleTarget.m'], ["classdef NelsonHelpInvalidHandleTarget < handle"; "end"]);
addpath(d);
h = nelson.lang.invalidHandle('NelsonHelpInvalidHandleTarget');
class(h)
isvalid(h)
``````

Reject a value class name.

``````matlab
try
  nelson.lang.invalidHandle('double');
catch exception
  disp(exception.message)
end
``````


== See also

#nlink(<handle:nelson.lang.WeakReference>)[nelson.lang.WeakReference];, #nlink(<handle:nelson.lang.HandlePlaceholder>)[nelson.lang.HandlePlaceholder];, #nlink(<handle:isvalid>)[isvalid];, #nlink(<types:class>)[class];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
