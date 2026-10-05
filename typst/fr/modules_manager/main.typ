#import "nelson_help.typ": *

= Gestionnaire de modules

Le gestionnaire de modules (Modules Manager) de Nelson fournit l'infrastructure pour étendre et gérer l'environnement à l'exécution.

 Il permet d'ajouter, de supprimer et d'interroger dynamiquement des modules, rendant le système flexible et adapté à différents flux de travail.

 Avec la prise en charge des modules internes et externes, le gestionnaire traite les métadonnées, les chemins et la gestion des versions des modules.

 Il fournit également des utilitaires pour organiser les boîtes à outils définies par l'utilisateur, gérer les gateways et garantir que les dépendances sont correctement chargées.

 Ce cadre simplifie la distribution, l'intégration et la maintenance des modules, formant l'épine dorsale de l'architecture modulaire de Nelson.

== Functions

- #nlink(<modules_manager:addgateway>)[addgateway]: Ajoute dynamiquement des builtins au moment de l'execution.
- #nlink(<modules_manager:addmodule>)[addmodule]: Ajouter un module à Nelson.
- #nlink(<modules_manager:deploytool>)[deploytool]: Ouvrir l'éditeur de projet d'application autonome.
- #nlink(<modules_manager:deploytool>)[deploytool]: Ouvrir l'éditeur de projet d'application autonome.
- #nlink(<modules_manager:gatewayinfo>)[gatewayinfo]: Retourne des informations sur une gateway.
- #nlink(<modules_manager:getmodules>)[getmodules]: Renvoie la liste des modules chargés dans Nelson.
- #nlink(<modules_manager:ismodule>)[ismodule]: Vérifie si un module est chargé.
- #nlink(<modules_manager:module-json>)[module.json]: Description du fichier module.json
- #nlink(<modules_manager:modulepath>)[modulepath]: Renvoie le chemin d'un module.
- #nlink(<modules_manager:ncc>)[ncc]: Construire un executable natif a partir d'une application Nelson.
- #nlink(<modules_manager:nmm>)[nmm]: Gestionnaire de modules Nelson.
- #nlink(<modules_manager:nmm_build_help>)[nmm\_build\_help]: fonction d'aide pour générer l'aide d'un module externe
- #nlink(<modules_manager:nmm_build_loader>)[nmm\_build\_loader]: fonction d'aide pour générer le loader principal (loader.m) d'un module externe
- #nlink(<modules_manager:nmm_init>)[nmm init]: Genere un manifeste module.json valide.
- #nlink(<modules_manager:removegateway>)[removegateway]: Supprime dynamiquement un builtin au moment de l'exécution.
- #nlink(<modules_manager:removemodule>)[removemodule]: Supprime un module de Nelson.
- #nlink(<modules_manager:requiremodule>)[requiremodule]: Renvoie une erreur si le module n'est pas chargé dans Nelson.
- #nlink(<modules_manager:semver>)[semver]: gestionnaire de versions sémantiques.
- #nlink(<modules_manager:standaloneApplicationCompiler>)[standaloneApplicationCompiler]: Ouvrir l'éditeur de projet d'application autonome.
- #nlink(<modules_manager:standaloneApplicationCompiler>)[standaloneApplicationCompiler]: Ouvrir l'éditeur de projet d'application autonome.
- #nlink(<modules_manager:toolboxdir>)[toolboxdir]: Renvoie le chemin d'un module.
- #nlink(<modules_manager:usermodulesdir>)[usermodulesdir]: Renvoie le chemin où les modules externes sont enregistrés.


#nested[
#pagebreak(weak: true)
#include "addgateway.typ"
#pagebreak(weak: true)
#include "addmodule.typ"
#pagebreak(weak: true)
#include "deploytool.typ"
#pagebreak(weak: true)
#include "gatewayinfo.typ"
#pagebreak(weak: true)
#include "getmodules.typ"
#pagebreak(weak: true)
#include "ismodule.typ"
#pagebreak(weak: true)
#include "module-json.typ"
#pagebreak(weak: true)
#include "modulepath.typ"
#pagebreak(weak: true)
#include "ncc.typ"
#pagebreak(weak: true)
#include "nmm.typ"
#pagebreak(weak: true)
#include "nmm_build_help.typ"
#pagebreak(weak: true)
#include "nmm_build_loader.typ"
#pagebreak(weak: true)
#include "nmm_init.typ"
#pagebreak(weak: true)
#include "removegateway.typ"
#pagebreak(weak: true)
#include "removemodule.typ"
#pagebreak(weak: true)
#include "requiremodule.typ"
#pagebreak(weak: true)
#include "semver.typ"
#pagebreak(weak: true)
#include "standaloneApplicationCompiler.typ"
#pagebreak(weak: true)
#include "toolboxdir.typ"
#pagebreak(weak: true)
#include "usermodulesdir.typ"
]
