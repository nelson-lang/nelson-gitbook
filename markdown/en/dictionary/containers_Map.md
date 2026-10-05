# containers.Map

Object that maps unique keys to values.

## 📝 Syntax

- m = containers.Map()
- m = containers.Map(keys, values)
- m = containers.Map('KeyType', keyType, 'ValueType', valueType)

## 📥 Input argument

- keys - cell array of character vectors, character vector, string array, or numeric array.
- values - scalar, array, or cell array of values.
- keyType - character vector or string scalar that specifies the key type: char, double, single, int32, uint32, int64, or uint64.
- valueType - character vector or string scalar that specifies the value type: any, char, double, single, int32, uint32, int64, uint64, logical, int8, or uint8.

## 📤 Output argument

- m - scalar containers.Map object.

## 📄 Description


<b>m = containers.Map()</b> creates an empty map with character-vector keys and values of any type. 

<b>m = containers.Map(keys, values)</b> creates a scalar map from key-value pairs. Keys must be unique in the resulting map. If the same key appears more than once during construction, only the last value is kept. 

If <b>values</b> is scalar and several keys are provided, the scalar value is assigned to each key. Otherwise the number of keys and values must match. 

<b>m = containers.Map('KeyType', keyType, 'ValueType', valueType)</b> creates an empty typed map. The properties <b>Count</b>, <b>KeyType</b>, and <b>ValueType</b> are read-only. 

When keys are provided as logical, int8, uint8, int16, or uint16 arrays, the inferred key type is <b>double</b>. 

Values are accessed with parenthesis indexing, for example <b>m('name')</b>. Assigning <b>m(key) = value</b> inserts a new entry or replaces an existing value. The <b>remove</b> method deletes entries. 

The <b>keys</b> and <b>values</b> methods return cell arrays. The <b>isKey</b> method checks whether keys are present and accepts a scalar key or a cell array of keys.

## 💡 Examples

Create and query a map.

```matlab
m = containers.Map({'apple', 'banana'}, [10 20])
m('apple')
m('banana') = 25
isKey(m, {'apple', 'kiwi'})
keys(m)
values(m)
```
Create a typed map.

```matlab
m = containers.Map('KeyType', 'char', 'ValueType', 'any')
m('payload') = struct('name', 'Nelson', 'value', [1 2 3])
m.Count
m.ValueType
```
Use numeric keys.

```matlab
m = containers.Map([1 2 3], {'one', 'two', 'three'})
m(2)
remove(m, 1)
m.Count
```


## 🔗 See also

[dictionary](../dictionary/dictionary.md), [keys](../dictionary/keys.md), [values](../dictionary/values.md), [isKey](../dictionary/isKey.md), [remove](../dictionary/remove.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | containers.Map class |

<!--
## 👤 Author

Allan CORNET
-->
