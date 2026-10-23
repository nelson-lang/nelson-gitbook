# setappdata

Store application-defined data on an object.

## 📝 Syntax

- setappdata(h, name, value)

## 📥 Input argument

- h - a graphics object.
- name - a string: the data name.
- value - any value to store.

## 📄 Description


<b>setappdata</b> stores the named <b>value</b> as application-defined data on the object <b>h</b>, retrievable with <b>getappdata</b>.

## 💡 Example



```matlab
f = figure();
setappdata(gca, 'state', 42);
getappdata(gca, 'state')
```


## 🔗 See also

[getappdata](../../../graphics/2_graphics_objects/1_object_management/getappdata.md), [isappdata](../../../graphics/2_graphics_objects/1_object_management/isappdata.md), [rmappdata](../../../graphics/2_graphics_objects/1_object_management/rmappdata.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
