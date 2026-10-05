# nelson.mixin.util.PropertyGroup

A titled group of properties for custom object display.

## 📝 Syntax

- g = nelson.mixin.util.PropertyGroup(propertyList)
- g = nelson.mixin.util.PropertyGroup(propertyList, title)

## 📥 Input argument

- propertyList - cell array of property names.
- title - optional group title (char or string).

## 📤 Output argument

- g - a scalar nelson.mixin.util.PropertyGroup.

## 📄 Description


<b>nelson.mixin.util.PropertyGroup</b> groups object properties for display. A <b>getPropertyGroups</b> method of a <b>nelson.mixin.CustomDisplay</b> subclass returns an array of property groups, each rendered with its title followed by its properties. 

Properties: <b>Title</b>, <b>PropertyList</b> and the read-only <b>NumProperties</b>.

## 💡 Example

Create a property group.

```matlab
g = nelson.mixin.util.PropertyGroup({'X', 'Y'}, 'Coordinates');
g.Title
g.NumProperties
```


## 🔗 See also

[nelson.mixin.CustomDisplay](../handle/nelson.mixin.CustomDisplay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
