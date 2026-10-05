#import "nelson_help.typ": *

= readdictionary <dictionary:readdictionary>

Read dictionary from file.

== Syntax

- #raw("d = readdictionary(filename)");
- #raw("d = readdictionary(filename, Name, Value)");

== Input argument

/ filename: text scalar: source file name.

== Output argument

/ d: scalar: dictionary object.

== Description

#strong[d \= readdictionary(filename)]; reads a JSON object from #strong[filename]; and returns it as a dictionary.

 JSON object member names become string dictionary keys. Values are converted to Nelson values. JSON arrays are decoded as cell column arrays. If the JSON values have mixed types or non-scalar sizes, the dictionary value type is #raw("cell");.

 #strong[d \= readdictionary(filename, Name, Value)]; customizes the read operation. Supported options are:

 

- #strong[FileType:]; file type. Supported values are #raw("'auto'"); and #raw("'json'");. Only JSON dictionary files are currently supported.
- #strong[ValueType:]; target value type used to convert decoded values.
- #strong[AllowTrailingCommas:]; logical scalar. When true, trailing commas in JSON objects are accepted. Default is #raw("true");.
- #strong[AllowComments:]; logical scalar. When true, JavaScript-style line and block comments are ignored before parsing. Default is #raw("true");.
- #strong[AllowInfAndNaN:]; logical scalar. When true, #raw("NaN");, #raw("Infinity");, #raw("Inf");, #raw("-Infinity");, and #raw("-Inf"); tokens are accepted. Default is #raw("true");.
- #strong[DateLocale:]; accepted for compatibility. #strong[DictionaryNodeName]; and #strong[DictionarySelector]; are accepted as option names, but they are not supported for JSON dictionary files.


== Examples

Read a dictionary written as JSON.

``````matlab
filename = [tempdir(), 'products.json'];
d = dictionary(["apple", "banana"], [1.2, 2.3]);
writedictionary(d, filename);
r = readdictionary(filename)
``````

Read values with an explicit type.

``````matlab
filename = [tempdir(), 'counts.json'];
filewrite(filename, '{"a": 1, "b": 2}');
d = readdictionary(filename, 'ValueType', 'single')
``````


== See also

#nlink(<dictionary:writedictionary>)[writedictionary];, #nlink(<dictionary:dictionary>)[dictionary];, #nlink(<hdf5:loadnh5>)[loadnh5];, #nlink(<matio:loadmat>)[loadmat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
