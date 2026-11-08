#import "nelson_help.typ": *

= Notebook

Le module Notebook exécute des documents Notebook en dehors de l'éditeur.

 Un Notebook mêle texte mis en forme, code et ses sorties dans un même document. Ce module lit le conteneur natif #strong[.nlx]; et le format texte #strong[.m];, et exécute leurs cellules de code dans l'espace de travail de base — un document peut donc être lancé depuis la ligne de commande ou un script.

 Trois tutoriels pas à pas présentent la création d'un premier Notebook, ses cellules et contrôles, et la manière d'exécuter et de partager un document.

== Functions

- #nlink(<notebook:1_notebook_first_steps>)[Votre premier Notebook Nelson]: Créer, exécuter et enregistrer votre premier document Notebook.
- #nlink(<notebook:2_notebook_cells_and_controls>)[Cellules et contrôles d'un Notebook]: Les types de blocs d'un Notebook et les contrôles interactifs.
- #nlink(<notebook:3_notebook_run_and_share>)[Exécuter et partager un Notebook]: Exécuter un Notebook sans l'éditeur, puis l'exporter ou l'importer.
- #nlink(<notebook:nlx>)[nlx]: Le format de document Notebook de Nelson (.nlx).
- #nlink(<notebook:notebook>)[notebook]: Exécute un document Notebook ou ouvre l'éditeur Notebook.


#nested[
#pagebreak(weak: true)
#include "1_notebook_first_steps.typ"
#pagebreak(weak: true)
#include "2_notebook_cells_and_controls.typ"
#pagebreak(weak: true)
#include "3_notebook_run_and_share.typ"
#pagebreak(weak: true)
#include "nlx.typ"
#pagebreak(weak: true)
#include "notebook.typ"
]
