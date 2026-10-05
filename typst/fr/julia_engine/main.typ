#import "nelson_help.typ": *

= Moteur Julia

Le module Julia Engine permet à Nelson d'appeler du code Julia et d'utiliser des bibliothèques numériques Julia depuis l'environnement Nelson.

 Il fournit des fonctions pour exécuter du code Julia, gérer les environnements d'interpréteur et échanger des données entre Nelson et Julia.

== Functions

- #nlink(<julia_engine:jlenv>)[jlenv]: Modifier l'environnement par défaut de l'interpréteur Julia.
- #nlink(<julia_engine:jlrun>)[jlrun]: Exécute des instructions Julia depuis Nelson.
- #nlink(<julia_engine:jlrunfile>)[jlrunfile]: Exécute un fichier Julia depuis Nelson.
- #nlink(<julia_engine:julia_types>)[Julia Nelson types]: Gestion des données entre Julia et Nelson.


#nested[
#pagebreak(weak: true)
#include "jlenv.typ"
#pagebreak(weak: true)
#include "jlrun.typ"
#pagebreak(weak: true)
#include "jlrunfile.typ"
#pagebreak(weak: true)
#include "julia_types.typ"
]
