#import "nelson_help.typ": *

= moteur nflow

Création et édition programmatiques de modèles de blocs-diagrammes nflow.

 NFlow est actuellement publié en version #strong[1.0.0-beta.1]; : fonctionnel et testé, mais les détails de ses interfaces et de son format de fichier peuvent encore évoluer selon les retours.

== Functions

- #nlink(<nflow_engine:NFlow.exportfmu>)[NFlow.exportfmu]: Exporte un modele nflow en FMU source FMI 3.0 Co-Simulation.
- #nlink(<nflow_engine:NFlow.plotScopes>)[NFlow.plotScopes]: Ouvre une figure par scope d'un résultat de simulation nflow.
- #nlink(<nflow_engine:add_block>)[add\_block]: Ajoute un bloc à un modèle nflow depuis une source de bibliothèque.
- #nlink(<nflow_engine:add_line>)[add\_line]: Connecte deux ports de blocs dans un modèle nflow.
- #nlink(<nflow_engine:bdIsDirty>)[bdIsDirty]: Retourne vrai lorsqu'un modèle nflow a des modifications non sauvegardées.
- #nlink(<nflow_engine:bdIsLoaded>)[bdIsLoaded]: Retourne vrai lorsqu'un modèle nflow est chargé.
- #nlink(<nflow_engine:bdclose>)[bdclose]: Décharge un ou tous les modèles nflow en abandonnant les modifications non sauvegardées.
- #nlink(<nflow_engine:bdroot>)[bdroot]: Renvoie le modèle de plus haut niveau d'un chemin de bloc.
- #nlink(<nflow_engine:close_system>)[close\_system]: Décharge un modèle nflow ; un modèle modifié requiert un indicateur de sauvegarde explicite.
- #nlink(<nflow_engine:delete_block>)[delete\_block]: Supprime un bloc et toutes ses connexions d'un modèle nflow.
- #nlink(<nflow_engine:delete_line>)[delete\_line]: Supprime une connexion entre deux ports de blocs.
- #nlink(<nflow_engine:find_system>)[find\_system]: Liste les blocs d'un modèle, éventuellement filtrés par type.
- #nlink(<nflow_engine:gcbh>)[gcbh]: Renvoie le handle du bloc courant.
- #nlink(<nflow_engine:getNFlowBlockHandle>)[getNFlowBlockHandle]: Renvoie le handle d'un bloc par chemin, ou -1 si introuvable.
- #nlink(<nflow_engine:get_param>)[get\_param]: Interroge un paramètre de modèle ou de bloc.
- #nlink(<nflow_engine:getfullname>)[getfullname]: Renvoie le chemin complet d'un bloc ou d'un modèle depuis son handle.
- #nlink(<nflow_engine:linmod>)[linmod]: Linéarisation numérique d'un modèle nflow.
- #nlink(<nflow_engine:load_system>)[load\_system]: Charge un modèle nflow depuis un fichier .nflow sans ouvrir l'éditeur.
- #nlink(<nflow_engine:new_system>)[new\_system]: Crée et charge un modèle nflow vide.
- #nlink(<nflow_engine:nflow_codegenerate>)[nflow\_codegenerate]: Genere du code C ou Rust autonome depuis un modele nflow.
- #nlink(<nflow_engine:save_system>)[save\_system]: Sauvegarde un modèle nflow dans un fichier .nflow.
- #nlink(<nflow_engine:set_param>)[set\_param]: Définit atomiquement des paramètres de modèle ou de bloc.
- #nlink(<nflow_engine:sim>)[sim]: Simule un modèle nflow et retourne ses résultats.
- #nlink(<nflow_engine:ssp>)[NFlow.sspInfo]: Inspecte, importe et exporte des archives SSP (System Structure and Parameterization).
- #nlink(<nflow_engine:trim>)[trim]: Trouver un point de fonctionnement d'équilibre d'un modèle nflow.


#nested[
#pagebreak(weak: true)
#include "NFlow.exportfmu.typ"
#pagebreak(weak: true)
#include "NFlow.plotScopes.typ"
#pagebreak(weak: true)
#include "add_block.typ"
#pagebreak(weak: true)
#include "add_line.typ"
#pagebreak(weak: true)
#include "bdIsDirty.typ"
#pagebreak(weak: true)
#include "bdIsLoaded.typ"
#pagebreak(weak: true)
#include "bdclose.typ"
#pagebreak(weak: true)
#include "bdroot.typ"
#pagebreak(weak: true)
#include "close_system.typ"
#pagebreak(weak: true)
#include "delete_block.typ"
#pagebreak(weak: true)
#include "delete_line.typ"
#pagebreak(weak: true)
#include "find_system.typ"
#pagebreak(weak: true)
#include "gcbh.typ"
#pagebreak(weak: true)
#include "getNFlowBlockHandle.typ"
#pagebreak(weak: true)
#include "get_param.typ"
#pagebreak(weak: true)
#include "getfullname.typ"
#pagebreak(weak: true)
#include "linmod.typ"
#pagebreak(weak: true)
#include "load_system.typ"
#pagebreak(weak: true)
#include "new_system.typ"
#pagebreak(weak: true)
#include "nflow_codegenerate.typ"
#pagebreak(weak: true)
#include "save_system.typ"
#pagebreak(weak: true)
#include "set_param.typ"
#pagebreak(weak: true)
#include "sim.typ"
#pagebreak(weak: true)
#include "ssp.typ"
#pagebreak(weak: true)
#include "trim.typ"
]
