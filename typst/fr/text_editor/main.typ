#import "nelson_help.typ": *

= Text editor

Le module Éditeur de texte fournit un éditeur intégré à Nelson pour créer, éditer et formater des scripts et fichiers Nelson.

== Functions

- #nlink(<text_editor:debugging_workflow>)[debugging workflow]: Déroulement d'une session de débogage des fichiers Nelson dans l'éditeur.
- #nlink(<text_editor:edit>)[edit]: éditeur de fonctions.
- #nlink(<text_editor:editor>)[editor]: appelle l'éditeur de texte intégré.
- #nlink(<text_editor:opentoline>)[opentoline]: ouvre un fichier dans l'éditeur à une ligne donnée.


#nested[
#pagebreak(weak: true)
#include "debugging_workflow.typ"
#pagebreak(weak: true)
#include "edit.typ"
#pagebreak(weak: true)
#include "editor.typ"
#pagebreak(weak: true)
#include "opentoline.typ"
]
