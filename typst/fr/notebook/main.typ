#import "nelson_help.typ": *

= Notebook

Le module Notebook exécute des documents Notebook en dehors de l'éditeur.

 Un Notebook mêle texte mis en forme, code et ses sorties dans un même document. Ce module lit le conteneur natif #strong[.nlx]; et le format texte #strong[.m];, et exécute leurs cellules de code dans l'espace de travail de base — un document peut donc être lancé depuis la ligne de commande ou un script.

== Functions

- #nlink(<notebook:nlx>)[nlx]: Le format de document Notebook de Nelson (.nlx).
- #nlink(<notebook:notebook>)[notebook]: Exécute un document Notebook.


#nested[
#pagebreak(weak: true)
#include "nlx.typ"
#pagebreak(weak: true)
#include "notebook.typ"
]
