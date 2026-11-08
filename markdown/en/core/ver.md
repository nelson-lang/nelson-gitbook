# ver

Version information.

## 📝 Syntax

- ver
- ver(name)
- v = ver()
- v = ver(name)

## 📥 Input argument

- name - a string scalar or character array: product name.

## 📤 Output argument

- v - a struct array with fields <b>Name</b>, <b>Version</b>, <b>Release</b> and <b>Date</b>.

## 📄 Description


<b>ver</b> displays version information. 

<b>v = ver()</b> returns the version information in a structure array with the fields <b>Name</b>, <b>Version</b>, <b>Release</b> and <b>Date</b>. 

<b>ver(name)</b> restricts the information to the product <b>name</b> (an empty result is returned when it is not installed).

## 💡 Example



```matlab
ver
v = ver('Nelson')
```


## 🔗 See also

[version](../core/version.md), [verLessThan](../core/verLessThan.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
