# ismodule

Checks if a module is loaded.

## 📝 Syntax

- state = ismodule(module\_short\_name)
- state = ismodule(module\_short\_name, 'isprotected')

## 📥 Input argument

- module\_short\_name - a string: short module's name to test.
- 'isprotected' - check module isprotected (ie. internal module).

## 📤 Output argument

- state - a logical.

## 📄 Description


<b>ismodule</b> returns <b>true</b> if module is loaded otherwise <b>false</b>.

## 💡 Example



```matlab
ismodule('core')
ismodule('mymodule')
```


## 🔗 See also

[requiremodule](../modules_manager/requiremodule.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 1.11.0   | 
        'isprotected' second argument. |

<!--
## 👤 Author

Allan CORNET
-->
