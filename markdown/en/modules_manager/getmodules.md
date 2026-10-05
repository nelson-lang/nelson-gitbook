# getmodules

Returns list of modules loaded in Nelson.

## 📝 Syntax

- modules\_name = getmodules()
- [modules\_name, modules\_root\_path, modules\_version, modules\_protected] = getmodules()

## 📤 Output argument

- modules\_name - a cell of strings: modules names.
- modules\_root\_path - a cell of strings: path of modules.
- modules\_version - a cell of vector: [major, minor, patch].
- modules\_protected - a vector of logical: true if module can be removed or not.

## 📄 Description


<b>getmodules</b> returns list of modules loaded in Nelson. 

all core's modules are protected and cannot removed during an nelson's session.

## 💡 Example



```matlab
[modules_name, modules_root_path, modules_version, modules_protected] = getmodules()
```


## 🔗 See also

[requiremodule](../modules_manager/requiremodule.md), [ismodule](../modules_manager/ismodule.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
