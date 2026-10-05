# rmprop

Remove custom table property.

## 📝 Syntax

- TB = rmprop(TA, name)

## 📥 Input argument

- TA - Input table.
- name - Custom property name.

## 📤 Output argument

- TB - Table with custom property removed.

## 📄 Description


<b>rmprop</b> removes a custom property from <b>T.Properties.CustomProperties</b>.

## 💡 Example

Remove a custom property

```matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'demo';
T = rmprop(T, 'Source')
```


## 🔗 See also

[addprop](../../table/4_sort_filter_rearrange/addprop.md), [table](../../table/1_create_convert_tables/table.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
