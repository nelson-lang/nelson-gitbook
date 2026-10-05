#import "nelson_help.typ": *

= writedictionary <dictionary:writedictionary>

Write dictionary to file.

== Syntax

- #raw("writedictionary(d, filename)");
- #raw("writedictionary(d, filename, Name, Value)");

== Input argument

/ d: scalar: configured dictionary object.
/ filename: text scalar: destination file name.

== Description

#strong[writedictionary(d, filename)]; writes the configured dictionary #strong[d]; to a JSON file.

 Dictionary keys are written as JSON object member names. Keys must be text, numeric, or logical scalar values. Values can be scalar values, arrays, cell arrays, structures, or structure arrays when they can be represented as JSON values.

 #strong[writedictionary(d, filename, Name, Value)]; customizes the write operation. Supported options are:

 

- #strong[FileType:]; file type. Supported values are #raw("'auto'"); and #raw("'json'");. Only JSON dictionary files are currently supported.
- #strong[PrettyPrint:]; logical scalar. When true, writes indented JSON text. Default is #raw("true");.
- #strong[PreserveInfAndNaN:]; logical scalar. When true, writes #raw("NaN");, #raw("Infinity");, and #raw("-Infinity"); tokens for non-finite numeric values. Default is #raw("true");. MAT and NH5 persistence for dictionary variables is handled by #strong[savemat];\/#strong[loadmat]; and #strong[savenh5];\/#strong[loadnh5];.


== Examples

Write and read a dictionary stored as JSON.

``````matlab
filename = [tempdir(), 'products.json'];
d = dictionary(["apple", "banana"], [1.2, 2.3]);
writedictionary(d, filename);
r = readdictionary(filename)
``````

Write heterogeneous dictionary values.

``````matlab
filename = [tempdir(), 'mixed_dictionary.json'];
d = dictionary(["vector", "data"], {[1 NaN Inf], struct('name', "Nelson")});
writedictionary(d, filename, 'PrettyPrint', false);
r = readdictionary(filename)
``````


== See also

#nlink(<dictionary:readdictionary>)[readdictionary];, #nlink(<dictionary:dictionary>)[dictionary];, #nlink(<hdf5:savenh5>)[savenh5];, #nlink(<matio:savemat>)[savemat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
