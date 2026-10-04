# isequal

Determine whether dictionaries are equal.

## 📝 Syntax

- tf = isequal(d1, d2)
- tf = isequal(d1, d2, ..., dN)

## 📥 Input argument

- d1, d2, ..., dN - dictionary objects to compare.

## 📤 Output argument

- tf - logical scalar: true when all dictionaries contain the same key-value associations.

## 📄 Description

<b>tf = isequal(d1, d2)</b> returns true when both dictionaries have the same configuration and the same key-value associations.

Dictionary equality is independent of insertion order. If a key appears more than once during construction, only the last value kept by the dictionary is compared.

## 💡 Example

```matlab
d1 = dictionary([1 2], ["one", "two"]);
d2 = dictionary([2 1], ["two", "one"]);
tf = isequal(d1, d2)
```

## 🔗 See also

[dictionary](../dictionary/dictionary.md), [entries](../dictionary/entries.md), [isequal](../elementary_functions/isequal.md).

## 🕔 History

| Version | 📄 Description               |
| ------- | ---------------------------- |
| 2.0.0   | dictionary classdef equality |

<!--
## 👤 Author

Allan CORNET
-->
