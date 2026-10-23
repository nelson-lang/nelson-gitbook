# isappdata

True if application-defined data exists.

## 📝 Syntax

- tf = isappdata(h, name)

## 📥 Input argument

- h - a graphics object.
- name - a string: the data name.

## 📤 Output argument

- tf - true if the named data is stored on h.

## 📄 Description


<b>isappdata</b> returns true when application-defined data named <b>name</b> exists on <b>h</b>.

## 💡 Example



```matlab
f = figure();
setappdata(gca, 'state', 42);
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
