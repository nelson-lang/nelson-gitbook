# addprop

Add custom table property.

## 📝 Syntax

- TB = addprop(TA, name, type)

## 📥 Input argument

- TA - Input table.
- name - Custom property name.
- type - Custom property type: <b>'table'</b> or <b>'variable'</b>.

## 📤 Output argument

- TB - Table with custom property added.

## 📄 Description

<b>addprop</b> adds a custom property under <b>T.Properties.CustomProperties</b>. The custom property type follows table custom properties: <b>'table'</b> or <b>'variable'</b>.

## 💡 Example

Add a custom property

```matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'demo';
T.Properties.CustomProperties.Source
```

## 🔗 See also

[rmprop](../../table/rmprop.md), [table](../../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
