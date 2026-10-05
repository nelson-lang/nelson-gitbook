#import "nelson_help.typ": *

= Profiling tools

Le module Profiler de Nelson fournit des fonctions pour mesurer et analyser les performances d'exécution du code.

 Il aide les utilisateurs à identifier les goulots d'étranglement, optimiser les parties lentes des programmes et améliorer l'efficacité globale.

== Functions

- #nlink(<profiler:profile>)[profile]: Profiler le temps d'exécution des fonctions Macro.
- #nlink(<profiler:profsave>)[profsave]: Enregistrer les résultats du profilage au format HTML.


#nested[
#pagebreak(weak: true)
#include "profile.typ"
#pagebreak(weak: true)
#include "profsave.typ"
]
