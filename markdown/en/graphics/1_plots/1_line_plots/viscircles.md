# viscircles

Draw circles.

## 📝 Syntax

- viscircles(centers, radii)
- viscircles(ax, centers, radii)
- viscircles(..., 'Color', c)
- viscircles(..., 'LineWidth', w)
- h = viscircles(...)

## 📥 Input argument

- centers - an N-by-2 matrix of circle centers [x y].
- radii - a scalar or an N-element vector of circle radii.
- ax - the target axes.

## 📤 Output argument

- h - the group object containing the drawn circles.

## 📄 Description


<b>viscircles</b> draws circles with the given <b>centers</b> and <b>radii</b> on the axes. The colour (default red) and line width are set with the <b>'Color'</b> and <b>'LineWidth'</b> name-value arguments.

## 💡 Example



```matlab
f = figure();
axis equal
viscircles([0 0; 2 1], [1; 0.5], 'Color', 'b');
```


## 🔗 See also

[line](../../../graphics/1_plots/1_line_plots/line.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
