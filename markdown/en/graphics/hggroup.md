# hggroup

Create group object.

## 📝 Syntax

- h = hggroup()
- h = hggroup(..., propertyName, propertyValue, ...)
- h = hggroup(ax, ...)

## 📥 Input argument

- ax - graphics object: axes or hggroup.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- p - a graphics object of type: hggroup

## 📄 Description

<b>hggroup</b> creates a hggroup object as a child of the current axes and returns its handle, h.

The <b>hggroup</b> object is used to group graphics objects, such as lines, patches, and text, so that they can be manipulated together.

## 💡 Example

```matlab
figure();
ax = gca();
g = hggroup();
h = text(0.1, 0.1, 'tttt', 'Parent', g);
h.Parent
h.Visible
h.Visible = 'off';

```

## 🔗 See also

[gca](../graphics/gca.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
