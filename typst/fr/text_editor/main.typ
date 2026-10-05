#import "nelson_help.typ": *

= Text editor

Le module Éditeur de texte fournit un éditeur intégré à Nelson pour créer, éditer et formater des scripts et fichiers Nelson.

== Functions

- #nlink(<text_editor:debugging_workflow>)[débogage]: Flux de travail de débogage pour les fichiers de code Nelson.
- #nlink(<text_editor:edit>)[edit]: éditeur de fonctions.
- #nlink(<text_editor:editor>)[editor]: appelle l'éditeur de texte intégré.


#nested[
#pagebreak(weak: true)
#include "debugging_workflow.typ"
#pagebreak(weak: true)
#include "edit.typ"
#pagebreak(weak: true)
#include "editor.typ"
]
