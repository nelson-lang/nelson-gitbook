# axescheck

Extract an axes handle from an argument list.

## 📝 Syntax

- [ax, args, nargs] = axescheck(arg1, arg2, ...)

## 📥 Input argument

- arg1, arg2, ... - an argument list, as passed to a plotting function.

## 📤 Output argument

- ax - the axes handle found in the list, or <b>[]</b> if none was given.
- args - the remaining arguments, as a cell array.
- nargs - the number of remaining arguments, <b>numel(args)</b>.

## 📄 Description


<b>axescheck</b> is a helper for plotting functions. It returns a leading axes handle in <b>ax</b> (or <b>[]</b> when the first argument is not an axes), with the remaining arguments in <b>args</b>. A <b>'Parent'</b>, value pair anywhere in the list also supplies the axes and is removed from <b>args</b>.

## 💡 Example



```matlab
ax = axes();
[cax, args, nargs] = axescheck(ax, 1, 2)
```


## 🔗 See also

[gca](../../../graphics/2_graphics_objects/1_object_management/gca.md), [isgraphics](../../../graphics/2_graphics_objects/1_object_management/isgraphics.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
