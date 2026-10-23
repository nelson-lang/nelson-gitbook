# getappdata

Retrieve application-defined data from an object.

## 📝 Syntax

- value = getappdata(h, name)
- s = getappdata(h)

## 📥 Input argument

- h - a graphics object.
- name - a string: the data name.

## 📤 Output argument

- value - the stored value, or [] if the name is not set.
- s - a structure of all application data when no name is given.

## 📄 Description


<b>getappdata</b> returns the application-defined data named <b>name</b> stored on <b>h</b>, or all of it as a structure when <b>name</b> is omitted.

## 💡 Example



```matlab
f = figure();
setappdata(gca, 'state', 42);
getappdata(gca, 'state')
```


## 🔗 See also

[setappdata](../../../graphics/2_graphics_objects/1_object_management/setappdata.md), [isappdata](../../../graphics/2_graphics_objects/1_object_management/isappdata.md), [rmappdata](../../../graphics/2_graphics_objects/1_object_management/rmappdata.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
