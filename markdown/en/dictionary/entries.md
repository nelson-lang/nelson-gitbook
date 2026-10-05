# entries

Key-value pairs of dictionary.

## 📝 Syntax

- E = entries(d)
- E = entries(d, format)

## 📥 Input argument

- d - scalar: dictionary object.
- format - format: string scalar or character vector: 'table' (default), 'struct' or 'cell'.

## 📤 Output argument

- E - table, struct or cell.

## 📄 Description


<b>E = entries(d)</b> retrieves a table containing the key-value pairs from the given dictionary,<b>d</b>. 

<b>E = entries(d)</b> is equivalent to <b>E = entries(d, 'table')</b>: the default output format is a table. 

<b>E = entries(d, format)</b> specifies the output format as a table, a structure or a cell. For instance, entries(d, "struct") returns a structure containing the key-value pairs of d. This option is useful for data types that are not compatible with tables.

## 💡 Example



```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
E = entries(d, 'struct')
E = entries(d, 'cell')

```


## 🔗 See also

[dictionary](../dictionary/dictionary.md), [lookup](../dictionary/lookup.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
