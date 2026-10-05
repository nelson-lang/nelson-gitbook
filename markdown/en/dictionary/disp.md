# disp

Display dictionary.

## 📝 Syntax

- disp(d)

## 📥 Input argument

- d - scalar: dictionary object.

## 📄 Description


<b>disp(d)</b> displays a summary of dictionary <b>d</b>, including key and value types, number of entries, and visible key-value pairs. 

Unconfigured dictionaries and configured dictionaries with no entries are displayed with dedicated summary messages.

## 💡 Example



```matlab
d = dictionary(["one", "two"], [1, 2]);
disp(d)
```


## 🔗 See also

[dictionary](../dictionary/dictionary.md), [disp](../display_format/disp.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | dictionary classdef display |

<!--
## 👤 Author

Allan CORNET
-->
