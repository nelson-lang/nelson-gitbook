# streamparticles

Display particle markers along stream paths.

## 📝 Syntax

- streamparticles(vertices)
- streamparticles(vertices, n)
- streamparticles(parent, vertices, n)
- streamparticles(lineHandle, vertices, n)
- streamparticles(..., name, value)
- h = streamparticles(...)

## 📥 Input argument

- vertices - Cell array of streamline coordinate arrays with two or three columns.
- lineHandle - Existing line object to reuse for the particle markers.
- n - Number of particle markers to sample on each streamline.
- name, value - Supported properties include Marker, MarkerEdgeColor, MarkerFaceColor, Animate, FrameRate, and ParticleAlignment.

## 📄 Description

<b>streamparticles</b> draws markers at sampled positions from precomputed streamline vertices.

## 💡 Examples

Display stream particles.

```matlab
vertices = {[0 0; 0.5 0.2; 1 0.5; 1.5 0.8]};
streamparticles(vertices);
```

<img src="streamparticles_1.svg" align="middle"/>
Display particles from precomputed streamline vertices.

```matlab
vertices = {[0 0; 0.5 0.2; 1 0.5; 1.5 0.8]};
streamparticles(vertices, 4, 'MarkerFaceColor', 'red');
```

<img src="streamparticles_2.svg" align="middle"/>

## 🔗 See also

[streamline](../../../graphics/1_plots/5_vector_fields/streamline.md).
