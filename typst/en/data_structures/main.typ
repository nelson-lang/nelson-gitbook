#import "nelson_help.typ": *

= Data structures

The Data Structures module provides tools for creating, manipulating, and inspecting arrays, cells, and structures in Nelson.

 It enables conversion between different data formats, access and modification of fields, application of functions to array elements, and organization of structured data.

 This module handles complex data through programmatic operations and dynamic data management.

== Functions

- #nlink(<data_structures:arrayfun>)[arrayfun]: Apply a function to each element of an array.
- #nlink(<data_structures:cell>)[cell]: Create cell array of empty matrices.
- #nlink(<data_structures:cell2mat>)[cell2mat]: Transform a cell array containing matrices into a single, concatenated matrix.
- #nlink(<data_structures:cell2struct>)[cell2struct]: Creates a struct from a cell.
- #nlink(<data_structures:celldisp>)[celldisp]: Display cell array contents.
- #nlink(<data_structures:cellfun>)[cellfun]: Evaluates an function on a cell.
- #nlink(<data_structures:cellstr>)[cellstr]: Converts to cell of character array.
- #nlink(<data_structures:fieldnames>)[fieldnames]: Return structure field names or public classdef property names.
- #nlink(<data_structures:getfield>)[getfield]: Returns value of a field in a struct.
- #nlink(<data_structures:iscellstr>)[iscellstr]: Returns if a variable is a cell of strings.
- #nlink(<data_structures:isfield>)[isfield]: Checks if a fieldname exists in a struct.
- #nlink(<data_structures:mat2cell>)[mat2cell]: Split an array into a cell array.
- #nlink(<data_structures:namedargs2cell>)[namedargs2cell]: Converts a struct containing name-value pairs to a cell.
- #nlink(<data_structures:num2cell>)[num2cell]: Convert array to cell array with consistently sized cells.
- #nlink(<data_structures:orderfields>)[orderfields]: Reorganize the fields of a structured array.
- #nlink(<data_structures:renameStructField>)[renameStructField]: Rename field names of a struct or struct array.
- #nlink(<data_structures:rmfield>)[rmfield]: Remove fields from structure.
- #nlink(<data_structures:setfield>)[setfield]: Set structure field contents.
- #nlink(<data_structures:struct>)[struct]: Create a structure or convert an object to a structure.
- #nlink(<data_structures:struct2cell>)[struct2cell]: Creates a cell from a structure.
- #nlink(<data_structures:structfun>)[structfun]: Apply a function to each field of a scalar structure.


#nested[
#pagebreak(weak: true)
#include "arrayfun.typ"
#pagebreak(weak: true)
#include "cell.typ"
#pagebreak(weak: true)
#include "cell2mat.typ"
#pagebreak(weak: true)
#include "cell2struct.typ"
#pagebreak(weak: true)
#include "celldisp.typ"
#pagebreak(weak: true)
#include "cellfun.typ"
#pagebreak(weak: true)
#include "cellstr.typ"
#pagebreak(weak: true)
#include "fieldnames.typ"
#pagebreak(weak: true)
#include "getfield.typ"
#pagebreak(weak: true)
#include "iscellstr.typ"
#pagebreak(weak: true)
#include "isfield.typ"
#pagebreak(weak: true)
#include "mat2cell.typ"
#pagebreak(weak: true)
#include "namedargs2cell.typ"
#pagebreak(weak: true)
#include "num2cell.typ"
#pagebreak(weak: true)
#include "orderfields.typ"
#pagebreak(weak: true)
#include "renameStructField.typ"
#pagebreak(weak: true)
#include "rmfield.typ"
#pagebreak(weak: true)
#include "setfield.typ"
#pagebreak(weak: true)
#include "struct.typ"
#pagebreak(weak: true)
#include "struct2cell.typ"
#pagebreak(weak: true)
#include "structfun.typ"
]
