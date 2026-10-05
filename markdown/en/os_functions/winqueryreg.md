# winqueryreg

Read the Windows registry (Windows only).

## 📝 Syntax

- c = winqueryreg ('name', rootkey, subkey)
- v = winqueryreg (rootkey, subkey, value\_name)
- v = winqueryreg (rootkey, subkey)

## 📥 Input argument

- rootkey - a string: root key.
- subkey - a string: subkey path.
- value\_name - a string: name of value.

## 📤 Output argument

- c - a cell of strings.
- v - a string or int32.

## 📄 Description


<b>c = winqueryreg ('name', rootkey, subkey)</b> returns a cell of strings with key names in rootkey\\subkey. 

<b>v = winqueryreg (rootkey, subkey, value\_name)</b> returns the value associated to value\_name in rootkey\\subkey. 

If the value is a 32-bit integer,<b>winqueryreg</b> returns the value as int32. If this value is a string, it is a string. 

<b>v = winqueryreg (rootkey, subkey)</b> returns value in rootkey\\subkey that has no value name property. 

Supported root keys: 

'HKEY\_CLASSES\_ROOT', 'HKCR', 

'HKEY\_CURRENT\_USER', 'HKCU', 

'HKEY\_LOCAL\_MACHINE', 'HKLM', 

'HKEY\_USERS', 'HKU', 

'HKEY\_CURRENT\_CONFIG', 'HKCC'

## 💡 Example



```matlab
winqueryreg('name', 'HKEY_LOCAL_MACHINE', 'HARDWARE\DESCRIPTION\System')
winqueryreg('HKLM', 'HARDWARE\DESCRIPTION\System\CentralProcessor\1\', 'ProcessorNameString')
```


## 🔗 See also

[winopen](../os_functions/winopen.md), [searchenv](../os_functions/searchenv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
