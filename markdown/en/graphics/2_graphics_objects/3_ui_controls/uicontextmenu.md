# uicontextmenu

Create a context menu graphics object.

## 📝 Syntax

- cm = uicontextmenu()
- cm = uicontextmenu(parent)
- cm = uicontextmenu(propertyName, propertyValue, ...)
- cm = uicontextmenu(parent, propertyName, propertyValue, ...)

## 📥 Input argument

- parent - Figure graphics object. When omitted, the current figure is used.
- propertyName - Property name: a scalar string or row vector character.
- propertyValue - Property value compatible with the property name.

## 📤 Output argument

- cm - Context menu graphics object.

## 📄 Description

<b>uicontextmenu</b> creates a context menu that can be assigned to the <b>ContextMenu</b> property of figures, axes, controls, and other graphics objects.

Menu items are created with <b>uimenu</b> using the context menu as parent.

See [uicontextmenu properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.uicontextmenu.properties.md) for the complete property list.

## 💡 Example

Attach a context menu to axes.

```matlab

f = figure();
ax = axes('Parent', f);
cm = uicontextmenu(f);
uimenu(cm, 'Text', 'Reset view', 'MenuSelectedFcn', 'disp(''reset'')');
ax.ContextMenu = cm;

```

## 🔗 See also

[uicontextmenu properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.uicontextmenu.properties.md).
