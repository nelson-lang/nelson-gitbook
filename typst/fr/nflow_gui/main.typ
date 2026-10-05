#import "nelson_help.typ": *

= éditeur nflow

L'éditeur nflow est l'environnement de schéma-blocs de Nelson pour construire et simuler des systèmes dynamiques.

 Il fournit un éditeur visuel pour câbler blocs et sous-systèmes, enregistrer et charger des diagrammes au format JSON #strong[.nflow];, et lancer des simulations avec le moteur à pas fixe ou le solveur à pas variable (CVODES), avec détection de franchissement de zéro pour les blocs discontinus.

 Les diagrammes peuvent aussi être transformés en code C ou Rust autonome via le générateur de code.

 NFlow est actuellement publié en version #strong[1.0.0-beta.1]; : fonctionnel et testé, mais les détails de ses interfaces et de son format de fichier peuvent encore évoluer selon les retours.

== Functions

- #nlink(<nflow_gui:nflow>)[nflow]: Lance l'editeur nflow, eventuellement sur un fichier modele.
- #nlink(<nflow_gui:nflow_dashboard>)[nflow\_dashboard]: Surveiller et régler les simulations NFlow avec des blocs Dashboard interactifs.
- #nlink(<nflow_gui:nflow_multirate>)[nflow\_multirate]: Exécuter des blocs à des cadences différentes (multi-rate).
- #nlink(<nflow_gui:nflow_solvers>)[nflow\_solvers]: Choisir comment un diagramme est integre (choix du solveur).
- #nlink(<nflow_gui:nflow_wire_editing>)[nflow\_wire\_editing]: Routage et édition des fils dans l'éditeur nflow.
- #nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace]: Utiliser l'espace de travail de l'éditeur nflow.
- #nlink(<nflow_gui:open_system>)[open\_system]: Ouvre l'éditeur nflow sur un modèle, un fichier modèle ou une archive SSP.


#nested[
#pagebreak(weak: true)
#include "nflow.typ"
#pagebreak(weak: true)
#include "nflow_dashboard.typ"
#pagebreak(weak: true)
#include "nflow_multirate.typ"
#pagebreak(weak: true)
#include "nflow_solvers.typ"
#pagebreak(weak: true)
#include "nflow_wire_editing.typ"
#pagebreak(weak: true)
#include "nflow_workspace.typ"
#pagebreak(weak: true)
#include "open_system.typ"
]
