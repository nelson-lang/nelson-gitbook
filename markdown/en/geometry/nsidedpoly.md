# nsidedpoly

Create a regular polygon.

## 📝 Syntax

- pg = nsidedpoly(n)
- pg = nsidedpoly(n, 'Center', c)
- pg = nsidedpoly(n, 'Radius', r)
- pg = nsidedpoly(n, 'SideLength', s)

## 📥 Input argument

- n - the number of sides (an integer >= 3).
- 'Center' - a two-element center [x y] (default [0 0]).
- 'Radius' - the circumscribed-circle radius.
- 'SideLength' - the length of each side.

## 📤 Output argument

- pg - a polyshape of the regular polygon.

## 📄 Description


<b>nsidedpoly</b> returns a regular <b>n</b>-sided polygon as a <b>polyshape</b>. Without a radius or side length, the polygon has unit area.

## 💡 Example



```matlab
f = figure();
plot(nsidedpoly(6, 'Radius', 2));
axis equal
```


## 🔗 See also

[polyshape](../geometry/polyshape.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
