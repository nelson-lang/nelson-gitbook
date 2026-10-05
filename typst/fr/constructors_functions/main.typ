#import "nelson_help.typ": *

= Fonctions constructeurs

Le module Constructeurs fournit des outils pour créer des valeurs numériques fondamentales, des scalaires, des vecteurs et des matrices dans Nelson.

 Il comprend des constantes, des matrices identité et diagonales, et des valeurs spéciales telles que l'infini, NaN et la précision machine.

 Ce module constitue la base pour initialiser les structures de données et effectuer des calculs mathématiques et numériques.

== Functions

- #nlink(<constructors_functions:Inf>)[Inf]: Infini
- #nlink(<constructors_functions:NaN>)[NaN]: Crée un Not-a-Number
- #nlink(<constructors_functions:diag>)[diag]: Obtenir les éléments diagonaux d'une matrice ou créer une matrice diagonale.
- #nlink(<constructors_functions:eps>)[eps]: Crée un epsilon (précision machine)
- #nlink(<constructors_functions:eye>)[eye]: Crée une matrice identité.
- #nlink(<constructors_functions:i>)[i]: Nombre imaginaire pur.
- #nlink(<constructors_functions:j>)[j]: Unite imaginaire.
- #nlink(<constructors_functions:ones>)[ones]: Crée une matrice composée de uns.
- #nlink(<constructors_functions:pi>)[pi]: Rapport de la circonférence d'un cercle à son diamètre.
- #nlink(<constructors_functions:zeros>)[zeros]: Crée une matrice composée de zéros.


#nested[
#pagebreak(weak: true)
#include "Inf.typ"
#pagebreak(weak: true)
#include "NaN.typ"
#pagebreak(weak: true)
#include "diag.typ"
#pagebreak(weak: true)
#include "eps.typ"
#pagebreak(weak: true)
#include "eye.typ"
#pagebreak(weak: true)
#include "i.typ"
#pagebreak(weak: true)
#include "j.typ"
#pagebreak(weak: true)
#include "ones.typ"
#pagebreak(weak: true)
#include "pi.typ"
#pagebreak(weak: true)
#include "zeros.typ"
]
