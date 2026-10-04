# figure

Creates an figure window.

## 📝 Syntax

- f = figure()
- f = figure(ID)
- f = figure(H)
- f = figure(propertyName, propertyValue)
- f = figure(ID, propertyName, propertyValue)
- f = figure(H, propertyName, propertyValue)

## 📥 Input argument

- ID - a scalar integer value: find or creates with ID.
- H - a scalar graphics object on an existing figure.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- f - a graphics object: figure handle.

## 📄 Description

<b>figure</b> creates figure.

Clicking on an figure automatically sets it as the current figure object.

See [figure properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.figure.properties.md) for the complete property list.

## 💡 Example

```matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
figure('Name', 'Hello')

```

## 🔗 See also

[figure properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.figure.properties.md), [gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md), [close](../../../graphics/2_graphics_objects/1_object_management/close.md).

## 🕔 History

| Version | 📄 Description                                                                                   |
| ------- | ------------------------------------------------------------------------------------------------ |
| 1.0.0   | initial version                                                                                  |
| 1.2.0   | Clicking on an figure automatically sets it as the current figure object.                        |
| 1.7.0   | CreateFcn, DeleteFcn, CloseRequestFcn, KeyPressFcn, KeyReleaseFcn, ButtonDownFcn callback added. |
| --      | BeingDeleted property added.                                                                     |
| 1.8.0   | Resize property added.                                                                           |
| 1.13.0  | DevicePixelRatio property added.                                                                 |
| 1.14.0  | WindowState property added.                                                                      |
| --      | Figure property documentation updated.                                                           |

<!--
## 👤 Author

Allan CORNET
-->
