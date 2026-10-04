# compassplot

Display vectors from the origin in polar coordinates.

## 📝 Syntax

- compassplot(z)
- compassplot(theta, r)
- compassplot(parent, ...)
- h = compassplot(...)

## 📄 Description

<b>compassplot</b> displays complex values or polar coordinate pairs as arrows starting from the origin. The returned handle is a <b>compassplot</b> object.

The [compassplot properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.compassplot.properties.md) page lists the supported object properties.

## 💡 Example

Display complex vectors.

```matlab
z = [1 + 1i, 1 - 1i, -1 + 0.5i];
compassplot(z);
```

<img src="compassplot_1.svg" align="middle"/>

## 🔗 See also

[polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md), [compassplot properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.compassplot.properties.md), [quiver](../../../graphics/1_plots/5_vector_fields/quiver.md).
