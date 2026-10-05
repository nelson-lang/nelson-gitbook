# streamtube

Display stream paths with tube-like line styling.

## 📝 Syntax

- streamtube(U, V, W, sx, sy, sz)
- streamtube(X, Y, Z, U, V, W, sx, sy, sz)
- streamtube(vertices)
- streamtube(vertices, width)
- h = streamtube(...)

## 📄 Description


<b>streamtube</b> displays 3-D stream paths as tube surfaces. 

<b>streamtube(vertices)</b> uses precomputed streamline vertices. The returned handles are surface objects.

## 💡 Example

Display a stream tube style path.

```matlab
t = 0:.15:2;
vertices = {[cos(t)' sin(t)' t']};
streamtube(vertices);
```
<img src="streamtube_1.svg" align="middle"/>


## 🔗 See also

[streamline](../../../graphics/1_plots/5_vector_fields/streamline.md), [streamribbon](../../../graphics/1_plots/5_vector_fields/streamribbon.md).