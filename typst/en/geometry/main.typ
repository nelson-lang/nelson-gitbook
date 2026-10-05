#import "nelson_help.typ": *

= Geometry

The Geometry module provides tools for performing geometric transformations and computations in Nelson.

 It supports rotation operations in three-dimensional space, convex hulls, Delaunay triangulations, Voronoi diagrams, spatial searches, and scattered data interpolation.

 This module is useful for applications in computer graphics, robotics, computational geometry, interpolation, and spatial analysis.

== Functions

- #nlink(<geometry:alphaShape>)[alphaShape]: Alpha shape object
- #nlink(<geometry:boundary>)[boundary]: Boundary facets of a set of points
- #nlink(<geometry:convhull>)[convhull]: Convex hull of 2-D or 3-D points
- #nlink(<geometry:convhulln>)[convhulln]: Convex hull in N dimensions
- #nlink(<geometry:delaunay>)[delaunay]: Delaunay triangulation of 2-D or 3-D points
- #nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation]: Delaunay triangulation object
- #nlink(<geometry:delaunayn>)[delaunayn]: Delaunay triangulation in N dimensions
- #nlink(<geometry:dsearchn>)[dsearchn]: Nearest point search
- #nlink(<geometry:griddata>)[griddata]: Interpolate scattered data
- #nlink(<geometry:rotx>)[rotx]: 3x3 transformation matrix for rotations around x-axis
- #nlink(<geometry:roty>)[roty]: 3x3 transformation matrix for rotations around y-axis
- #nlink(<geometry:rotz>)[rotz]: 3x3 transformation matrix for rotations around z-axis
- #nlink(<geometry:scatteredInterpolant>)[scatteredInterpolant]: Scattered data interpolant object
- #nlink(<geometry:stlread>)[stlread]: Create triangulation from STL file
- #nlink(<geometry:stlwrite>)[stlwrite]: Create STL file from triangulation
- #nlink(<geometry:triangulation>)[triangulation]: Triangulation object
- #nlink(<geometry:tsearchn>)[tsearchn]: Point location in a triangulation
- #nlink(<geometry:voronoi>)[voronoi]: Voronoi diagram of planar points
- #nlink(<geometry:voronoin>)[voronoin]: Voronoi diagram in N dimensions


#nested[
#pagebreak(weak: true)
#include "alphaShape.typ"
#pagebreak(weak: true)
#include "boundary.typ"
#pagebreak(weak: true)
#include "convhull.typ"
#pagebreak(weak: true)
#include "convhulln.typ"
#pagebreak(weak: true)
#include "delaunay.typ"
#pagebreak(weak: true)
#include "delaunayTriangulation.typ"
#pagebreak(weak: true)
#include "delaunayn.typ"
#pagebreak(weak: true)
#include "dsearchn.typ"
#pagebreak(weak: true)
#include "griddata.typ"
#pagebreak(weak: true)
#include "rotx.typ"
#pagebreak(weak: true)
#include "roty.typ"
#pagebreak(weak: true)
#include "rotz.typ"
#pagebreak(weak: true)
#include "scatteredInterpolant.typ"
#pagebreak(weak: true)
#include "stlread.typ"
#pagebreak(weak: true)
#include "stlwrite.typ"
#pagebreak(weak: true)
#include "triangulation.typ"
#pagebreak(weak: true)
#include "tsearchn.typ"
#pagebreak(weak: true)
#include "voronoi.typ"
#pagebreak(weak: true)
#include "voronoin.typ"
]
