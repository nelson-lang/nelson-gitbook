# moteur nflow

Création et édition programmatiques de modèles de blocs-diagrammes nflow.

NFlow est actuellement publié en version **1.0.0-beta.1** : fonctionnel et testé, mais les détails de ses interfaces et de son format de fichier peuvent encore évoluer selon les retours.

## Functions

- [NFlow.exportfmu](NFlow.exportfmu.md) - Exporte un modele nflow en FMU source FMI 3.0 Co-Simulation.
- [NFlow.plotScopes](NFlow.plotScopes.md) - Ouvre une figure par scope d'un résultat de simulation nflow.
- [add_block](add_block.md) - Ajoute un bloc à un modèle nflow depuis une source de bibliothèque.
- [add_line](add_line.md) - Connecte deux ports de blocs dans un modèle nflow.
- [bdIsDirty](bdIsDirty.md) - Retourne vrai lorsqu'un modèle nflow a des modifications non sauvegardées.
- [bdIsLoaded](bdIsLoaded.md) - Retourne vrai lorsqu'un modèle nflow est chargé.
- [bdclose](bdclose.md) - Décharge un ou tous les modèles nflow en abandonnant les modifications non sauvegardées.
- [bdroot](bdroot.md) - Renvoie le modèle de plus haut niveau d'un chemin de bloc.
- [close_system](close_system.md) - Décharge un modèle nflow ; un modèle modifié requiert un indicateur de sauvegarde explicite.
- [delete_block](delete_block.md) - Supprime un bloc et toutes ses connexions d'un modèle nflow.
- [delete_line](delete_line.md) - Supprime une connexion entre deux ports de blocs.
- [find_system](find_system.md) - Liste les blocs d'un modèle, éventuellement filtrés par type.
- [gcbh](gcbh.md) - Renvoie le handle du bloc courant.
- [getSimulinkBlockHandle](getSimulinkBlockHandle.md) - Renvoie le handle d'un bloc par chemin, ou -1 si introuvable.
- [get_param](get_param.md) - Interroge un paramètre de modèle ou de bloc.
- [getfullname](getfullname.md) - Renvoie le chemin complet d'un bloc ou d'un modèle depuis son handle.
- [linmod](linmod.md) - Linéarisation numérique d'un modèle nflow.
- [load_system](load_system.md) - Charge un modèle nflow depuis un fichier .nflow sans ouvrir l'éditeur.
- [new_system](new_system.md) - Crée et charge un modèle nflow vide.
- [nflow_codegenerate](nflow_codegenerate.md) - Genere du code C ou Rust autonome depuis un modele nflow.
- [save_system](save_system.md) - Sauvegarde un modèle nflow dans un fichier .nflow.
- [set_param](set_param.md) - Définit atomiquement des paramètres de modèle ou de bloc.
- [sim](sim.md) - Simule un modèle nflow et retourne ses résultats.
- [NFlow.sspInfo](ssp.md) - Inspecte, importe et exporte des archives SSP (System Structure and Parameterization).
- [trim](trim.md) - Trouver un point de fonctionnement d'équilibre d'un modèle nflow.
