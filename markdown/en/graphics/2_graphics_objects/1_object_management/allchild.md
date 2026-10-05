# allchild

Return all direct children of graphics objects.

## 📝 Syntax

- h = allchild(objhandles)

## 📥 Input argument

- objhandles - graphics object or array of graphics objects.

## 📤 Output argument

- h - column array containing all direct child graphics objects.

## 📄 Description


<b>allchild</b> returns direct children regardless of their <b>HandleVisibility</b> value. 

For <b>groot</b>, it returns all figures in root child order, including figures hidden from the <b>Children</b> property while <b>ShowHiddenHandles</b> is <b>'off'</b>.

## 💡 Example



```matlab
close all
f = figure('Visible', 'off');
ax = axes('Parent', f, 'HandleVisibility', 'off');
h = allchild(f)
```


## 🔗 See also

[findall](../../../graphics/2_graphics_objects/1_object_management/findall.md), [findobj](../../../graphics/2_graphics_objects/1_object_management/findobj.md), [groot](../../../graphics/2_graphics_objects/1_object_management/groot.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.17.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
