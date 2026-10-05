#import "nelson_help.typ": *

= inputname <core:inputname>

Get variable name of function input.

== Syntax

- #raw("s = inputname(argNumber)");

== Input argument

/ argNumber: a scalar, real, positive integer value: Number of function input argument

== Output argument

/ s: character vector: variable name

== Description

#strong[inputname]; get variable name of function input.

 #strong[inputname]; is only useable within a function


== Example

``````matlab
function R = getinputname(varargin)
    R = string([]);
    for i = 1:nargin
        R = [R, string(inputname(i))];
    end
end
``````


== See also

#nlink(<core:nargin>)[nargin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
