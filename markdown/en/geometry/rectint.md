# rectint

Area of intersection of rectangles.

## 📝 Syntax

- out = rectint(A, B)

## 📥 Input argument

- A - an M-by-4 matrix; each row is a rectangle <b>[x y width height]</b>.
- B - an N-by-4 matrix; each row is a rectangle <b>[x y width height]</b>.

## 📤 Output argument

- out - an M-by-N matrix; <b>out(i, j)</b> is the area of the intersection of rectangle <b>A(i, :)</b> and rectangle <b>B(j, :)</b>.

## 📄 Description


<b>rectint</b> returns the area of intersection of rectangles. Each rectangle is given as a four-element row <b>[x y width height]</b>, where <b>(x, y)</b> is a corner and <b>width</b> and <b>height</b> are the side lengths. Rectangles that do not overlap contribute a zero area.

## 💡 Example



```matlab
area = rectint([0 0 1 1], [0.5 0.5 1 1])
```


## 🔗 See also

[polyarea](../geometry/polyarea.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
