#import "nelson_help.typ": *

= Double

Le module Type Double fournit des outils pour gerer les valeurs numeriques en precision double dans Nelson.

 Il convertit les valeurs en double precision et donne acces aux principales limites numeriques des nombres a virgule flottante.

== Functions

- #nlink(<double:double>)[double]: Convertit une variable au type double précision.
- #nlink(<double:flintmax>)[flintmax]: Plus grand entier consécutif représentable en virgule flottante.
- #nlink(<double:realmax>)[realmax]: Plus grand nombre flottant positif.
- #nlink(<double:realmin>)[realmin]: Plus petit nombre flottant positif.


#nested[
#pagebreak(weak: true)
#include "double.typ"
#pagebreak(weak: true)
#include "flintmax.typ"
#pagebreak(weak: true)
#include "realmax.typ"
#pagebreak(weak: true)
#include "realmin.typ"
]
