# replace

Replaces strings in another.

## 📝 Syntax

- res = replace(str, old, new)

## 📥 Input argument

- str - a string, string array or cell of strings.
- old - a string, string array or cell of strings to find.
- new - a string, string array or cell of strings.

## 📤 Output argument

- res - a string, string array or cell of strings.

## 📄 Description


<b>replace</b> replaces strings in another. 

<b>replace</b> and <b>strrep</b> replace strings but<b>replace</b> is recommended.

## 💡 Example



```matlab
r = replace('This is a string.', 'is', 'is not')
r = replace({'cccc','ccbbcca'},{'cc','bb'},{'cc'})
```


## 🔗 See also

[strrep](../../string/3_find_replace/strrep.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
