# éditeur nflow

L'éditeur nflow est l'environnement de schéma-blocs de Nelson pour construire et simuler des systèmes dynamiques.

Il fournit un éditeur visuel pour câbler blocs et sous-systèmes, enregistrer et charger des diagrammes au format JSON **.nflow**, et lancer des simulations avec le moteur à pas fixe ou le solveur à pas variable (CVODES), avec détection de franchissement de zéro pour les blocs discontinus.

Les diagrammes peuvent aussi être transformés en code C ou Rust autonome via le générateur de code.

NFlow est actuellement publié en version **1.0.0-beta.1** : fonctionnel et testé, mais les détails de ses interfaces et de son format de fichier peuvent encore évoluer selon les retours.

## Functions

- [nflow](nflow.md) - Lance l'editeur nflow, eventuellement sur un fichier modele.
- [nflow_dashboard](nflow_dashboard.md) - Surveiller et régler les simulations NFlow avec des blocs Dashboard interactifs.
- [nflow_multirate](nflow_multirate.md) - Exécuter des blocs à des cadences différentes (multi-rate).
- [nflow_solvers](nflow_solvers.md) - Choisir comment un diagramme est integre (choix du solveur).
- [nflow_wire_editing](nflow_wire_editing.md) - Routage et édition des fils dans l'éditeur nflow.
- [nflow_workspace](nflow_workspace.md) - Utiliser l'espace de travail de l'éditeur nflow.
- [open_system](open_system.md) - Ouvre l'éditeur nflow sur un modèle, un fichier modèle ou une archive SSP.
