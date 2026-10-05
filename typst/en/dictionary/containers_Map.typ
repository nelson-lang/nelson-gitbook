#import "nelson_help.typ": *

= containers.Map <dictionary:containers_Map>

Object that maps unique keys to values.

== Syntax

- #raw("m = containers.Map()");
- #raw("m = containers.Map(keys, values)");
- #raw("m = containers.Map('KeyType', keyType, 'ValueType', valueType)");

== Input argument

/ keys: cell array of character vectors, character vector, string array, or numeric array.
/ values: scalar, array, or cell array of values.
/ keyType: character vector or string scalar that specifies the key type: char, double, single, int32, uint32, int64, or uint64.
/ valueType: character vector or string scalar that specifies the value type: any, char, double, single, int32, uint32, int64, uint64, logical, int8, or uint8.

== Output argument

/ m: scalar containers.Map object.

== Description

#strong[m \= containers.Map()]; creates an empty map with character-vector keys and values of any type.

 #strong[m \= containers.Map(keys, values)]; creates a scalar map from key-value pairs. Keys must be unique in the resulting map. If the same key appears more than once during construction, only the last value is kept.

 If #strong[values]; is scalar and several keys are provided, the scalar value is assigned to each key. Otherwise the number of keys and values must match.

 #strong[m \= containers.Map('KeyType', keyType, 'ValueType', valueType)]; creates an empty typed map. The properties #strong[Count];, #strong[KeyType];, and #strong[ValueType]; are read-only.

 When keys are provided as logical, int8, uint8, int16, or uint16 arrays, the inferred key type is #strong[double];.

 Values are accessed with parenthesis indexing, for example #strong[m('name')];. Assigning #strong[m(key) \= value]; inserts a new entry or replaces an existing value. The #strong[remove]; method deletes entries.

 The #strong[keys]; and #strong[values]; methods return cell arrays. The #strong[isKey]; method checks whether keys are present and accepts a scalar key or a cell array of keys.


== Examples

Create and query a map.

``````matlab
m = containers.Map({'apple', 'banana'}, [10 20])
m('apple')
m('banana') = 25
isKey(m, {'apple', 'kiwi'})
keys(m)
values(m)
``````

Create a typed map.

``````matlab
m = containers.Map('KeyType', 'char', 'ValueType', 'any')
m('payload') = struct('name', 'Nelson', 'value', [1 2 3])
m.Count
m.ValueType
``````

Use numeric keys.

``````matlab
m = containers.Map([1 2 3], {'one', 'two', 'three'})
m(2)
remove(m, 1)
m.Count
``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:keys>)[keys];, #nlink(<dictionary:values>)[values];, #nlink(<dictionary:isKey>)[isKey];, #nlink(<dictionary:remove>)[remove];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [containers.Map class],
)

// Author: Allan CORNET
