#import "nelson_help.typ": *

= Fortran vers C

Le module F2C permet aux utilisateurs de Nelson de convertir des fichiers sources Fortran 77 hérités en code C.

 Ce module permet de compiler et d'exécuter d'anciennes routines Fortran, et d'interagir avec les variables Nelson depuis les flux de travail Nelson.

 Il est particulièrement utile pour réutiliser des algorithmes numériques existants ou des bases de code scientifiques héritées dans un environnement Nelson moderne.

== Functions

- #nlink(<f2c:f2c>)[f2c]: Convertisseur Fortran vers C.


#nested[
#pagebreak(weak: true)
#include "f2c.typ"
]
