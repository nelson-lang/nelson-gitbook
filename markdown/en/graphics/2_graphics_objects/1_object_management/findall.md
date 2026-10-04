# findall

Find graphics objects, including hidden handles.

## 📝 Syntax

- h = findall()
- h = findall(prop, value)
- h = findall(objhandles, prop, value)
- h = findall(objhandles, 'flat', ...)
- h = findall(objhandles, '-depth', d, ...)

## 📥 Input argument

- objhandles - graphics object or array of graphics objects to search from.
- prop - property name as a character vector or scalar string.
- value - property value to match.
- d - nonnegative integer search depth, or Inf.

## 📤 Output argument

- h - column array of matching graphics objects.

## 📄 Description

<b>findall</b> searches the graphics object hierarchy like <b>findobj</b>, but includes objects whose <b>HandleVisibility</b> is <b>'off'</b> or <b>'callback'</b>.

When the search starts from <b>groot</b>, hidden figures are traversed even when <b>ShowHiddenHandles</b> is <b>'off'</b>.

## 💡 Example

```matlab
close all
f = figure('Visible', 'off', 'HandleVisibility', 'off', 'Tag', 'hiddenFigure');
h = findall(groot(), 'Tag', 'hiddenFigure')
```

## 🔗 See also

[findobj](../../../graphics/2_graphics_objects/1_object_management/findobj.md), [allchild](../../../graphics/2_graphics_objects/1_object_management/allchild.md), [groot](../../../graphics/2_graphics_objects/1_object_management/groot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
