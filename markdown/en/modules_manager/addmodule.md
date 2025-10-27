# addmodule

Add module to Nelson.

## 📝 Syntax

- addmodule(module_path, module_short_name)

## 📥 Input argument

- module_path - a string: root path of a module. path must exist.
- module_short_name - a string: short module's name. This name must not be already used.

## 📄 Description

<b>addmodule</b> registers a new module designed by his path and short name.

## 💡 Example

See module skeleton for example

```matlab
ismodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
removemodule('module_skeleton')
```

## 🔗 See also

[ismodule](../modules_manager/ismodule.md), [removemodule](../modules_manager/removemodule.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
