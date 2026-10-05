#import "nelson_help.typ": *

= Fonctions du gestionnaire de memoire

Le module Memory Manager fournit des outils pour gerer les variables et la memoire dans Nelson.

 Il prend en charge la creation, l'affectation, l'interrogation et la suppression de variables dans differentes portees, ainsi que la gestion des variables globales et persistantes.

 Le module permet aussi d'inspecter la memoire, de verrouiller des variables et d'enumerer le contenu de l'espace de travail.

== Functions

- #nlink(<memory_manager:acquirevar>)[acquirevar]: Récupère la valeur d'une variable depuis une portée de variables spécifiée.
- #nlink(<memory_manager:assignin>)[assignin]: Assigne une valeur à une variable dans une portée de variables spécifiée.
- #nlink(<memory_manager:clear>)[clear]: Efface une variable de l'espace de travail.
- #nlink(<memory_manager:clearvars>)[clearvars]: Supprime des variables de l'espace de travail courant.
- #nlink(<memory_manager:global>)[global]: Définit une variable globale.
- #nlink(<memory_manager:isglobal>)[isglobal]: Vérifie si une variable est globale.
- #nlink(<memory_manager:isvar>)[isvar]: Vérifie l'existence d'une variable.
- #nlink(<memory_manager:memory>)[memory]: Obtenir des informations sur la mémoire.
- #nlink(<memory_manager:persistent>)[persistent]: Variable persistante.
- #nlink(<memory_manager:varislock>)[varislock]: Vérifie si une variable est verrouillée.
- #nlink(<memory_manager:varlock>)[varlock]: Verrouille une variable.
- #nlink(<memory_manager:varunlock>)[varunlock]: Déroque une variable.
- #nlink(<memory_manager:who>)[who]: Liste les variables en mémoire ou dans un fichier .nh5 ou .mat.
- #nlink(<memory_manager:whos>)[whos]: Liste les variables en mémoire ou dans un fichier .nh5 ou .mat avec tailles et types.


#nested[
#pagebreak(weak: true)
#include "acquirevar.typ"
#pagebreak(weak: true)
#include "assignin.typ"
#pagebreak(weak: true)
#include "clear.typ"
#pagebreak(weak: true)
#include "clearvars.typ"
#pagebreak(weak: true)
#include "global.typ"
#pagebreak(weak: true)
#include "isglobal.typ"
#pagebreak(weak: true)
#include "isvar.typ"
#pagebreak(weak: true)
#include "memory.typ"
#pagebreak(weak: true)
#include "persistent.typ"
#pagebreak(weak: true)
#include "varislock.typ"
#pagebreak(weak: true)
#include "varlock.typ"
#pagebreak(weak: true)
#include "varunlock.typ"
#pagebreak(weak: true)
#include "who.typ"
#pagebreak(weak: true)
#include "whos.typ"
]
