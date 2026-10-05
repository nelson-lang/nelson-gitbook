# surfl

Display a lighted surface.

## 📝 Syntax

- surfl(Z)
- surfl(X, Y, Z)
- surfl(..., 'light')
- surfl(parent, ...)
- h = surfl(...)

## 📄 Description


<b>surfl</b> displays a surface with lighting-based reflectance stored in the surface color data. 

<b>surfl(..., 'light')</b> creates an infinite light and returns the surface and light handles.

## 💡 Example

Lighted surface.

```matlab
surfl(peaks(30));
shading interp;
```
<img src="surfl_1.svg" align="middle"/>


## 🔗 See also

[surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [light](../../../graphics/3_labels_styling/3_interactions_camera_lighting/light.md).