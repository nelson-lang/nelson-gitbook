#import "nelson_help.typ": *

= Fonctions trigonometriques

Le module Fonctions trigonometriques fournit les fonctions de base pour les calculs trigonometriques dans Nelson.

 Il inclut sinus, cosinus, tangente, leurs inverses et leurs variantes hyperboliques. Les fonctions acceptent des angles en degres ou en radians selon l'interface appelee.

 Il fournit aussi les conversions entre degres et radians.

== Functions

- #nlink(<trigonometric_functions:acos>)[acos]: Calcule le cosinus inverse en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:acosd>)[acosd]: Cosinus inverse en degrés.
- #nlink(<trigonometric_functions:acosh>)[acosh]: Cosinus hyperbolique inverse.
- #nlink(<trigonometric_functions:acot>)[acot]: Cotangente inverse d'un angle en radians
- #nlink(<trigonometric_functions:acotd>)[acotd]: Cotangente inverse d'un angle en degrés
- #nlink(<trigonometric_functions:acoth>)[acoth]: Cotangente hyperbolique inverse.
- #nlink(<trigonometric_functions:acsc>)[acsc]: Cosécante inverse en radians.
- #nlink(<trigonometric_functions:acscd>)[acscd]: Cosécante inverse en degrés.
- #nlink(<trigonometric_functions:acsch>)[acsch]: Cosécante hyperbolique inverse.
- #nlink(<trigonometric_functions:asec>)[asec]: Sécante inverse d'un angle en radians.
- #nlink(<trigonometric_functions:asecd>)[asecd]: Sécante inverse de l'argument en degrés.
- #nlink(<trigonometric_functions:asech>)[asech]: Sécante hyperbolique inverse d'un angle en radians.
- #nlink(<trigonometric_functions:asin>)[asin]: Calcule le sinus inverse en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:asind>)[asind]: Sinus inverse en degrés.
- #nlink(<trigonometric_functions:asinh>)[asinh]: Sinus hyperbolique inverse
- #nlink(<trigonometric_functions:atan>)[atan]: Calcule la tangente inverse en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:atan2>)[atan2]: Calcule la tangente inverse à quatre quadrants.
- #nlink(<trigonometric_functions:atan2d>)[atan2d]: Tangente inverse à quatre quadrants en degrés.
- #nlink(<trigonometric_functions:atand>)[atand]: Tangente inverse en degrés.
- #nlink(<trigonometric_functions:atanh>)[atanh]: Calcule la tangente hyperbolique inverse.
- #nlink(<trigonometric_functions:cart2pol>)[cart2pol]: Transforme des coordonnées cartésiennes en coordonnées polaires ou cylindriques.
- #nlink(<trigonometric_functions:cart2sph>)[cart2sph]: Transforme des coordonnées cartésiennes en coordonnées sphériques.
- #nlink(<trigonometric_functions:cos>)[cos]: Calcule le cosinus en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:cosd>)[cosd]: Calcule le cosinus en degrés pour chaque élément de x.
- #nlink(<trigonometric_functions:cosh>)[cosh]: Calcule le cosinus hyperbolique en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:cosm>)[cosm]: Calcule le cosinus matriciel d'une matrice carrée.
- #nlink(<trigonometric_functions:cospi>)[cospi]: Calcule précisément cos(X \* pi).
- #nlink(<trigonometric_functions:cot>)[cot]: Cotangente d'un angle en radians
- #nlink(<trigonometric_functions:cotd>)[cotd]: Cotangente de l'argument en degrés
- #nlink(<trigonometric_functions:coth>)[coth]: Cotangente hyperbolique.
- #nlink(<trigonometric_functions:csc>)[csc]: Cosécante d'un angle en radians.
- #nlink(<trigonometric_functions:cscd>)[cscd]: Cosécante de l'argument en degrés.
- #nlink(<trigonometric_functions:csch>)[csch]: Cosécante hyperbolique.
- #nlink(<trigonometric_functions:deg2rad>)[deg2rad]: Convertit un angle de degrés en radians.
- #nlink(<trigonometric_functions:pol2cart>)[pol2cart]: Transforme des coordonnées polaires ou cylindriques en coordonnées cartésiennes.
- #nlink(<trigonometric_functions:rad2deg>)[rad2deg]: Convertit un angle de radians en degrés.
- #nlink(<trigonometric_functions:sec>)[sec]: Sécante d'un angle en radians.
- #nlink(<trigonometric_functions:secd>)[secd]: Sécante de l'argument en degrés.
- #nlink(<trigonometric_functions:sech>)[sech]: Sécante hyperbolique.
- #nlink(<trigonometric_functions:sin>)[sin]: Calcule le sinus en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:sind>)[sind]: Calcule le sinus en degrés pour chaque élément de x.
- #nlink(<trigonometric_functions:sinh>)[sinh]: Calcule le sinus hyperbolique en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:sinm>)[sinm]: Calcule le sinus matriciel d'une matrice carrée.
- #nlink(<trigonometric_functions:sinpi>)[sinpi]: Calcule précisément sin(X \* pi).
- #nlink(<trigonometric_functions:sph2cart>)[sph2cart]: Transforme des coordonnées sphériques en coordonnées cartésiennes.
- #nlink(<trigonometric_functions:tan>)[tan]: Calcule la tangente en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:tand>)[tand]: Calcule la tangente en degrés pour chaque élément de x.
- #nlink(<trigonometric_functions:tanh>)[tanh]: Calcule la tangente hyperbolique en radians pour chaque élément de x.
- #nlink(<trigonometric_functions:tanm>)[tanm]: Calcule la tangente matricielle d'une matrice carrée.
- #nlink(<trigonometric_functions:wrapTo180>)[wrapTo180]: Ramene un angle en degres dans \[-180, 180\].
- #nlink(<trigonometric_functions:wrapTo2Pi>)[wrapTo2Pi]: Ramene un angle en radians dans \[0, 2\*pi\].
- #nlink(<trigonometric_functions:wrapTo360>)[wrapTo360]: Ramene un angle en degres dans \[0, 360\].
- #nlink(<trigonometric_functions:wrapToPi>)[wrapToPi]: Ramene un angle en radians dans \[-pi, pi\].


#nested[
#pagebreak(weak: true)
#include "acos.typ"
#pagebreak(weak: true)
#include "acosd.typ"
#pagebreak(weak: true)
#include "acosh.typ"
#pagebreak(weak: true)
#include "acot.typ"
#pagebreak(weak: true)
#include "acotd.typ"
#pagebreak(weak: true)
#include "acoth.typ"
#pagebreak(weak: true)
#include "acsc.typ"
#pagebreak(weak: true)
#include "acscd.typ"
#pagebreak(weak: true)
#include "acsch.typ"
#pagebreak(weak: true)
#include "asec.typ"
#pagebreak(weak: true)
#include "asecd.typ"
#pagebreak(weak: true)
#include "asech.typ"
#pagebreak(weak: true)
#include "asin.typ"
#pagebreak(weak: true)
#include "asind.typ"
#pagebreak(weak: true)
#include "asinh.typ"
#pagebreak(weak: true)
#include "atan.typ"
#pagebreak(weak: true)
#include "atan2.typ"
#pagebreak(weak: true)
#include "atan2d.typ"
#pagebreak(weak: true)
#include "atand.typ"
#pagebreak(weak: true)
#include "atanh.typ"
#pagebreak(weak: true)
#include "cart2pol.typ"
#pagebreak(weak: true)
#include "cart2sph.typ"
#pagebreak(weak: true)
#include "cos.typ"
#pagebreak(weak: true)
#include "cosd.typ"
#pagebreak(weak: true)
#include "cosh.typ"
#pagebreak(weak: true)
#include "cosm.typ"
#pagebreak(weak: true)
#include "cospi.typ"
#pagebreak(weak: true)
#include "cot.typ"
#pagebreak(weak: true)
#include "cotd.typ"
#pagebreak(weak: true)
#include "coth.typ"
#pagebreak(weak: true)
#include "csc.typ"
#pagebreak(weak: true)
#include "cscd.typ"
#pagebreak(weak: true)
#include "csch.typ"
#pagebreak(weak: true)
#include "deg2rad.typ"
#pagebreak(weak: true)
#include "pol2cart.typ"
#pagebreak(weak: true)
#include "rad2deg.typ"
#pagebreak(weak: true)
#include "sec.typ"
#pagebreak(weak: true)
#include "secd.typ"
#pagebreak(weak: true)
#include "sech.typ"
#pagebreak(weak: true)
#include "sin.typ"
#pagebreak(weak: true)
#include "sind.typ"
#pagebreak(weak: true)
#include "sinh.typ"
#pagebreak(weak: true)
#include "sinm.typ"
#pagebreak(weak: true)
#include "sinpi.typ"
#pagebreak(weak: true)
#include "sph2cart.typ"
#pagebreak(weak: true)
#include "tan.typ"
#pagebreak(weak: true)
#include "tand.typ"
#pagebreak(weak: true)
#include "tanh.typ"
#pagebreak(weak: true)
#include "tanm.typ"
#pagebreak(weak: true)
#include "wrapTo180.typ"
#pagebreak(weak: true)
#include "wrapTo2Pi.typ"
#pagebreak(weak: true)
#include "wrapTo360.typ"
#pagebreak(weak: true)
#include "wrapToPi.typ"
]
