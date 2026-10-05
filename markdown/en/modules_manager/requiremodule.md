# requiremodule

Returns an error if module is not loaded in Nelson.

## 📝 Syntax

- requiremodule(module\_short\_name)

## 📥 Input argument

- module\_short\_name - a string: short module's name.

## 📄 Description


<b>requiremodule</b> returns an error if desired module is not loaded. 

This function is useful to verify a dependency on another module.

## 💡 Example

See module skeleton for example

```matlab
ismodule('module_skeleton')
requiremodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
requiremodule('module_skeleton')
```


## 🔗 See also

[ismodule](../modules_manager/ismodule.md), [addmodule](../modules_manager/removemodule.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
