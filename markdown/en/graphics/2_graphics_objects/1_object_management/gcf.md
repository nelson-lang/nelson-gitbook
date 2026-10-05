# gcf

get current figure graphics object.

## 📝 Syntax

- cf = gcf()

## 📤 Output argument

- cf - a graphics object: figure graphics object.

## 📄 Description


<b>cf = gcf()</b> returns the current figure graphics object. 

If a figure does not exist,<b>gcf()</b> creates a figure and returns its graphics object.

## 💡 Example



```matlab
cf = gcf();
root = groot();
isequal(root.CurrentFigure, cf)
```


## 🔗 See also

[figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [groot](../../../graphics/2_graphics_objects/1_object_management/groot.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
