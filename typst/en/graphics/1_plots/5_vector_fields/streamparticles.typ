#import "../../nelson_help.typ": *

= streamparticles <graphics:1_plots.5_vector_fields.streamparticles>

Display particle markers along stream paths.

== Syntax

- #raw("streamparticles(vertices)");
- #raw("streamparticles(vertices, n)");
- #raw("streamparticles(parent, vertices, n)");
- #raw("streamparticles(lineHandle, vertices, n)");
- #raw("streamparticles(..., name, value)");
- #raw("h = streamparticles(...)");

== Input argument

/ vertices: Cell array of streamline coordinate arrays with two or three columns.
/ lineHandle: Existing line object to reuse for the particle markers.
/ n: Number of particle markers to sample on each streamline.
/ name, value: Supported properties include Marker, MarkerEdgeColor, MarkerFaceColor, Animate, FrameRate, and ParticleAlignment.

== Description

#strong[streamparticles]; draws markers at sampled positions from precomputed streamline vertices.


== Examples

Display stream particles.

``````matlab
vertices = {[0 0; 0.5 0.2; 1 0.5; 1.5 0.8]};
streamparticles(vertices);
``````


#align(center)[#image("streamparticles_1.svg")]
Display particles from precomputed streamline vertices.

``````matlab
vertices = {[0 0; 0.5 0.2; 1 0.5; 1.5 0.8]};
streamparticles(vertices, 4, 'MarkerFaceColor', 'red');
``````


#align(center)[#image("streamparticles_2.svg")]

== See also

#nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];.
