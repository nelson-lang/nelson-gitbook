# rmappdata

Remove application-defined data from an object.

## 📝 Syntax

- rmappdata(h, name)

## 📥 Input argument

- h - a graphics object.
- name - a string: the data name to remove.

## 📄 Description


<b>rmappdata</b> removes the application-defined data named <b>name</b> from <b>h</b>. It is an error if the data does not exist.

## 💡 Example



```matlab
f = figure();
setappdata(gca, 'state', 42);
rmappdata(gca, 'state');
isappdata(gca, 'state')
```


## 🔗 See also

[setappdata](../../../graphics/2_graphics_objects/1_object_management/setappdata.md), [getappdata](../../../graphics/2_graphics_objects/1_object_management/getappdata.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
