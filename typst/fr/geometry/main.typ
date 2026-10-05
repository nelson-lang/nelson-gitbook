#import "nelson_help.typ": *

= Geometrie

Le module Geometrie fournit des outils pour effectuer des transformations et calculs geometriques dans Nelson.

 Il prend en charge les rotations en espace tridimensionnel, les enveloppes convexes, les triangulations de Delaunay, les diagrammes de Voronoi, les recherches spatiales et l'interpolation de donnees dispersees.

 Ce module est utile pour l'infographie, la robotique, la geometrie algorithmique, l'interpolation et l'analyse spatiale.

== Functions

- #nlink(<geometry:alphaShape>)[alphaShape]: Objet alpha shape
- #nlink(<geometry:boundary>)[boundary]: Facettes frontiere d'un ensemble de points
- #nlink(<geometry:convhull>)[convhull]: Enveloppe convexe de points 2-D ou 3-D
- #nlink(<geometry:convhulln>)[convhulln]: Enveloppe convexe en N dimensions
- #nlink(<geometry:delaunay>)[delaunay]: Triangulation de Delaunay de points 2-D ou 3-D
- #nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation]: Objet de triangulation de Delaunay
- #nlink(<geometry:delaunayn>)[delaunayn]: Triangulation de Delaunay en N dimensions
- #nlink(<geometry:dsearchn>)[dsearchn]: Recherche du point le plus proche
- #nlink(<geometry:griddata>)[griddata]: Interpolation de donnees dispersees
- #nlink(<geometry:rotx>)[rotx]: Matrice de transformation 3x3 pour rotation autour de l'axe x
- #nlink(<geometry:roty>)[roty]: Matrice de transformation 3x3 pour rotation autour de l'axe y
- #nlink(<geometry:rotz>)[rotz]: Matrice de transformation 3x3 pour rotation autour de l'axe z
- #nlink(<geometry:scatteredInterpolant>)[scatteredInterpolant]: Objet d'interpolation de donnees dispersees
- #nlink(<geometry:stlread>)[stlread]: Creer une triangulation depuis un fichier STL
- #nlink(<geometry:stlwrite>)[stlwrite]: Creer un fichier STL depuis une triangulation
- #nlink(<geometry:triangulation>)[triangulation]: Objet de triangulation
- #nlink(<geometry:tsearchn>)[tsearchn]: Localisation de point dans une triangulation
- #nlink(<geometry:voronoi>)[voronoi]: Diagramme de Voronoi de points plans
- #nlink(<geometry:voronoin>)[voronoin]: Diagramme de Voronoi en N dimensions


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
