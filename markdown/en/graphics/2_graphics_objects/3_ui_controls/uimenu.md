# uimenu

Create a menu or menu item graphics object.

## 📝 Syntax

- m = uimenu()
- m = uimenu(parent)
- m = uimenu(propertyName, propertyValue, ...)
- m = uimenu(parent, propertyName, propertyValue, ...)

## 📥 Input argument

- parent - Figure, context menu, or menu graphics object. When omitted, the current figure is used.
- propertyName - Property name: a scalar string or row vector character.
- propertyValue - Property value compatible with the property name.

## 📤 Output argument

- m - Menu graphics object.

## 📄 Description


<b>uimenu</b> creates a menu in a figure menu bar, a submenu, or an item in a context menu depending on the parent. 

The <b>Text</b> property controls the displayed label. Ampersand characters are preserved so the native toolkit can expose keyboard mnemonics. 

The <b>Position</b> property orders sibling menu objects. The <b>Children</b> property lists menu children in the graphics object hierarchy. 

See [uimenu properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.uimenu.properties.md) for the complete property list.

## 💡 Example

Create a figure menu.

```matlab

f = figure();
fileMenu = uimenu(f, 'Text', '&File');
uimenu(fileMenu, 'Text', 'Open', 'Accelerator', 'O');
uimenu(fileMenu, 'Text', 'Checked item', 'Checked', 'on', 'Separator', 'on');

```


## 🔗 See also

[uimenu properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.uimenu.properties.md).