#import "nelson_help.typ": *

= Fonctions de function_handle

Le module Function Handle fournit des outils pour créer et gérer les function handles dans Nelson.

 Il prend en charge les fonctions anonymes, la conversion entre chaînes et function handles, ainsi que la vérification des objets function\_handle.

 Ce module permet une invocation de fonctions flexible et dynamique, autorisant le passage, le stockage et l'exécution programmatiques de fonctions.

== Functions

- #nlink(<function_handle:anonymous_function>)[Anonymous Functions]: Fonctions anonymes.
- #nlink(<function_handle:func2str>)[func2str]: Renvoie une représentation chaîne d'un function handle.
- #nlink(<function_handle:isfunction_handle>)[isfunction\_handle]: Vérifie si une valeur est un function handle.
- #nlink(<function_handle:str2func>)[str2func]: Renvoie un function handle à partir d'une chaîne.


#nested[
#pagebreak(weak: true)
#include "anonymous_function.typ"
#pagebreak(weak: true)
#include "func2str.typ"
#pagebreak(weak: true)
#include "isfunction_handle.typ"
#pagebreak(weak: true)
#include "str2func.typ"
]
