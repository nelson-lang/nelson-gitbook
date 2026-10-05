#import "nelson_help.typ": *

= dictionary <dictionary:dictionary>

Object that maps unique keys to values.

== Syntax

- #raw("d = dictionary()");
- #raw("d = dictionary(d1)");
- #raw("d = dictionary(keys, values)");
- #raw("d = dictionary(key1, value1, ... , keyN, valueN)");

== Input argument

/ d1: a dictionary or py.dict object.
/ keys: scalar or array
/ values: scalar, array or cell array
/ key1, value1, ... , keyN, valueN: Key-value pairs

== Output argument

/ d: scalar: a dictionary object.

== Description

#strong[d \= dictionary()];: This command initializes an empty dictionary with no keys or values.

 Initially, the dictionary has no specific data types assigned to its keys or values. Once entries are added, the data types for keys and values are determined based on these entries.

 

 #strong[d \= dictionary(keys, values)];: This creates a dictionary using the provided keys and values.

 The resulting dictionary is a 1-by-1 scalar object. If a key appears multiple times, only the last corresponding value is kept. If the values parameter is a scalar, each key is assigned this value. When keys and values are arrays, they must have matching sizes, resulting in key-value pairs accordingly.

 

 Dictionaries are typed according to their entries. All keys must share the same data type, and all values must share a different, consistent data type. If a new entry has parts that don't match the existing data types, Nelson will attempt to convert them. Keys and values can have different data types, and character row vectors are converted to string scalars.

 

 #strong[d \= dictionary(key1, value1, ... , keyN, valueN)];: This syntax creates a dictionary with the specified key-value pairs.

 If a key is repeated, only the last key-value pair for that key is kept.

 Removing an Entry from a Dictionary:

 #strong[d(keys) \= \[\]];: This command removes the entry associated with the specified key from the dictionary.

 

 Assigning Values to Entries:

 #strong[d(keys) \= newValues];: This command assigns the elements of newValues to the entries specified by the corresponding keys.

 If a specified key does not exist in the dictionary, a new entry is created. If a key appears multiple times, only the last assigned value is kept. Assigning a new value to an existing key overwrites its previous value.

 

 Looking Up a Value:

 #strong[bvalue \= d(keys)];: This command retrieves the value corresponding to the specified keys from the dictionary.

 

 Storing Multiple Data Types in a Dictionary:

 #strong[value \= d{keys}]; retrieves the value associated with #strong[keys]; and returns the contents of the cell. If #strong[keys]; is an array, a comma-separated list of the corresponding values is returned. An error is thrown if the dictionary's values are configured to a datatype other than cell.

 #strong[d{keys} \= values]; assigns cells containing the elements of #strong[values]; to the entries specified by the corresponding#strong[keys];. An error is thrown if the dictionary's values are configured to a datatype other than cell.

 


== Examples

``````matlab
d = dictionary()
d('apple') = 1
d('banana') = 2
d('kiwi') = 3
d('banana') = []

``````

``````matlab
Values = {{'a','b'},["ff", "cc"],struct,[1 2 3 4]}
Keys = ["letters" "words" "a structure" "numeric array"]
d = dictionary(Keys, Values)
d{"numeric array"}
d{"a new entry"} = 'table'
``````

dictionary conversion nelson -- python

``````matlab
wheels = [1 2 3];
names = ["Monocycle" "Bicycle" "Tricycle"];
d = dictionary(wheels, names)
R = pyrun("A = d", "A", 'd', d)
dictionary(R)

``````


== See also

#nlink(<dictionary:lookup>)[lookup];, #nlink(<dictionary:remove>)[remove];, #nlink(<dictionary:insert>)[insert];, #nlink(<dictionary:disp>)[disp];, #nlink(<dictionary:isequal>)[isequal];, #nlink(<dictionary:readdictionary>)[readdictionary];, #nlink(<dictionary:writedictionary>)[writedictionary];, #nlink(<dictionary:containers_Map>)[containers.Map];, #nlink(<dictionary:keyMatch>)[keyMatch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
