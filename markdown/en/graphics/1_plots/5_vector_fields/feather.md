# feather

Display vectors from a baseline.

## 📝 Syntax

- feather(Z)
- feather(U, V)
- feather(..., LineSpec)
- feather(..., propertyName, propertyValue)
- feather(parent, ...)
- h = feather(...)

## 📄 Description

<b>feather</b> displays 2-D vectors from y = 0. Complex input uses real parts as horizontal components and imaginary parts as vertical components.

The output is a column vector of <b>line</b> graphics objects: one line for each arrow and one line for the baseline.

## 💡 Examples

Display vectors from complex values.

```matlab
z = [1 + 2i, 2 - 1i, -1 + 1i];
feather(z);
```

<img src="feather_1.svg" align="middle"/>
Use line style and line properties.

```matlab
u = [1 3 2];
v = [2 1 -1];
h = feather(u, v, '-or', 'LineWidth', 1.5);
```

<img src="feather_2.svg" align="middle"/>

## 🔗 See also

[line properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.line.properties.md), [quiver](../../../graphics/1_plots/5_vector_fields/quiver.md), [compassplot](../../../graphics/1_plots/5_vector_fields/compassplot.md).
