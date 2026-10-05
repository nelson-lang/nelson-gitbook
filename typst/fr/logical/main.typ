#import "nelson_help.typ": *

= Fonctions de type logique

Le module de type logique fournit des outils pour travailler avec les valeurs booléennes et les opérations logiques dans Nelson.

 Il permet la création, la conversion et la manipulation de données logiques, en prenant en charge des opérations logiques fondamentales essentielles pour le contrôle de flux, l'évaluation conditionnelle et la prise de décision dans les scripts et programmes.

== Functions

- #nlink(<logical:false>)[false]: Valeur logique false.
- #nlink(<logical:logical>)[logical]: Convertit une valeur numérique en type logique.
- #nlink(<logical:true>)[true]: Valeur logique true.
- #nlink(<logical:xor>)[xor]: Ou exclusif (XOR).


#nested[
#pagebreak(weak: true)
#include "false.typ"
#pagebreak(weak: true)
#include "logical.typ"
#pagebreak(weak: true)
#include "true.typ"
#pagebreak(weak: true)
#include "xor.typ"
]
