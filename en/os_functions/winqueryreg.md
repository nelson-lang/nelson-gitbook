# winqueryreg

Read the Windows registry (Windows only).

## Syntax

- c = winqueryreg ('name', rootkey, subkey)
- v = winqueryreg (rootkey, subkey, value_name)
- v = winqueryreg (rootkey, subkey)

## Input argument

- rootkey - a string: root key.
- subkey - a string: subkey path.
- value_name - a string: name of value.

## Output argument

- c - a cell of strings.
- v - a string or int32.

## Description

  <p><b>c = winqueryreg ('name', rootkey, subkey)</b> returns a cell of strings with key names in rootkey\subkey.</p>
  <p><b>v = winqueryreg (rootkey, subkey, value_name)</b> returns the value associated to value_name in rootkey\subkey.</p>
  <p>If the value is a 32-bit integer, <b>winqueryreg</b> returns the value as int32. If this value is a string, it is a string.</p>
  <p><b>v = winqueryreg (rootkey, subkey)</b> returns value in rootkey\subkey that has no value name property.</p>
  <p>Supported root keys:</p>
  <p>'HKEY_CLASSES_ROOT', 'HKCR',</p>
  <p>'HKEY_CURRENT_USER', 'HKCU',</p>
  <p>'HKEY_LOCAL_MACHINE', 'HKLM',</p>
  <p>'HKEY_USERS', 'HKU',</p>
  <p>'HKEY_CURRENT_CONFIG', 'HKCC'</p>

## Example

```matlab
winqueryreg('name', 'HKEY_LOCAL_MACHINE', 'HARDWARE\DESCRIPTION\System')
winqueryreg('HKLM', 'HARDWARE\DESCRIPTION\System\CentralProcessor\1\', 'ProcessorNameString')
```

## See also

[winopen](winopen.md), [searchenv](searchenv.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
