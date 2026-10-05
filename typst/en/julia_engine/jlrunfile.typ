#import "nelson_help.typ": *

= jlrunfile <julia_engine:jlrunfile>

Run Julia file from Nelson.

== Syntax

- #raw("jlrunfile(filename)");
- #raw("jlrunfile(filename input)");
- #raw("outvars = jlrunfile(filename, outputs)");
- #raw("outvars = jlrunfile(filename, outputs, jlName, jlValue, ...)");

== Input argument

/ filename: a string scalar, character vector: filename .jl to run.
/ "filename 'input' ": a string scalar, character vector: filename .jl to run with input arguments.
/ jlName, jlValue: Input arguments name and value
/ outputs: string array: Julia variable names.

== Output argument

/ outvars: One or more Nelson workspace variable names returned as valid Julia types.

== Description

#strong[jlrunfile(filenam)]; function executes Julia file.

 As the #strong[jlrun]; function, variables generated in the Julia workspace through the #strong[jlrunfile]; function do persist.

 The code #strong[outvars \= jlrunfile(file, outputs, jlName1, jlValue2, ..., jlNameN, jlValueN)]; executes the code with one or more name-value pair arguments.


== Examples

jlrunfile\_example\_1.jl

``````matlab
content = "hello Nelson"
display(content)
``````

jlrunfile from Nelson

``````matlab
jlrunfile('jlrunfile_example_1.jl')
``````


== See also

#nlink(<julia_engine:jlrun>)[jlrun];, #nlink(<julia_engine:jlenv>)[jlenv];, #nlink(<julia_engine:julia_types>)[Julia types supported];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.12.0], [initial version],
)

// Author: Allan CORNET
