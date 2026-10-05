#import "nelson_help.typ": *

= Dictionaries

The Dictionary module provides tools for working with key-value mappings in Nelson.

 It supports creation and configuration of dictionaries with defined key and value types, querying and modifying entries, and managing the overall structure.

 This module enables efficient storage, retrieval, and manipulation of data indexed by unique keys, making it ideal for associative arrays, lookups, and dynamic data management.

== Functions

- #nlink(<dictionary:configureDictionary>)[configureDictionary]: Generate a dictionary with defined key and value types.
- #nlink(<dictionary:containers_Map>)[containers.Map]: Object that maps unique keys to values.
- #nlink(<dictionary:dictionary>)[dictionary]: Object that maps unique keys to values.
- #nlink(<dictionary:disp>)[disp]: Display dictionary.
- #nlink(<dictionary:entries>)[entries]: Key-value pairs of dictionary.
- #nlink(<dictionary:insert>)[insert]: Add entries to a dictionary.
- #nlink(<dictionary:isConfigured>)[isConfigured]: Check if dictionary has types assigned to keys and values.
- #nlink(<dictionary:isKey>)[isKey]: Check if dictionary contains key
- #nlink(<dictionary:isequal>)[isequal]: Determine whether dictionaries are equal.
- #nlink(<dictionary:keyHash>)[keyHash]: Create a hash code for a dictionary key.
- #nlink(<dictionary:keyMatch>)[keyMatch]: Check whether two dictionary keys are same.
- #nlink(<dictionary:keys>)[keys]: Keys of dictionary.
- #nlink(<dictionary:lookup>)[lookup]: Find value in dictionary by key.
- #nlink(<dictionary:numEntries>)[numEntries]: Number of key-value pairs in dictionary.
- #nlink(<dictionary:readdictionary>)[readdictionary]: Read dictionary from file.
- #nlink(<dictionary:remove>)[remove]: Remove dictionary entries.
- #nlink(<dictionary:types>)[types]: Types of dictionary keys and values.
- #nlink(<dictionary:values>)[values]: Values of dictionary.
- #nlink(<dictionary:writedictionary>)[writedictionary]: Write dictionary to file.


#nested[
#pagebreak(weak: true)
#include "configureDictionary.typ"
#pagebreak(weak: true)
#include "containers_Map.typ"
#pagebreak(weak: true)
#include "dictionary.typ"
#pagebreak(weak: true)
#include "disp.typ"
#pagebreak(weak: true)
#include "entries.typ"
#pagebreak(weak: true)
#include "insert.typ"
#pagebreak(weak: true)
#include "isConfigured.typ"
#pagebreak(weak: true)
#include "isKey.typ"
#pagebreak(weak: true)
#include "isequal.typ"
#pagebreak(weak: true)
#include "keyHash.typ"
#pagebreak(weak: true)
#include "keyMatch.typ"
#pagebreak(weak: true)
#include "keys.typ"
#pagebreak(weak: true)
#include "lookup.typ"
#pagebreak(weak: true)
#include "numEntries.typ"
#pagebreak(weak: true)
#include "readdictionary.typ"
#pagebreak(weak: true)
#include "remove.typ"
#pagebreak(weak: true)
#include "types.typ"
#pagebreak(weak: true)
#include "values.typ"
#pagebreak(weak: true)
#include "writedictionary.typ"
]
