# whos

List variables in memory or in .nh5 or in .mat file with sizes and types.

## 📝 Syntax

- whos
- s = whos()
- whos(scope)
- s = whos(scope)
- whos('-file', filename)
- s = whos('-file', filename)
- whos(... , var1, ..., varN)
- s = whos(... , var1, ..., varN)

## 📥 Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- var1, ..., varN - a string: variable name.
- filename - string: an existing filename .nh5 or .mat file.

## 📤 Output argument

- st - stores information about the variables in the structure array s.

## 📄 Description

<b>whos</b> displays current variable names in memory or in .nh5 or .mat file.

## 💡 Example

```matlab
clear
whos
A = 3
b= 3
whos
s = whos()
save([tempdir(), 'example_who.nh5'], 'A', 'b')
whos([tempdir(), 'example_who.nh5'])

```

## 🔗 See also

[what](../functions_manager/what.md), [clear](../memory_manager/clear.md), [who](../memory_manager/who.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
