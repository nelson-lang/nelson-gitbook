# Gestionnaire de modules

Le gestionnaire de modules (Modules Manager) de Nelson fournit l'infrastructure pour étendre et gérer l'environnement à l'exécution.

Il permet d'ajouter, de supprimer et d'interroger dynamiquement des modules, rendant le système flexible et adapté à différents flux de travail.

Avec la prise en charge des modules internes et externes, le gestionnaire traite les métadonnées, les chemins et la gestion des versions des modules.

Il fournit également des utilitaires pour organiser les boîtes à outils définies par l'utilisateur, gérer les gateways et garantir que les dépendances sont correctement chargées.

Ce cadre simplifie la distribution, l'intégration et la maintenance des modules, formant l'épine dorsale de l'architecture modulaire de Nelson.

## Functions

- [addgateway](addgateway.md) - Ajoute dynamiquement un builtin au moment de l'exécution.
- [addmodule](addmodule.md) - Ajouter un module à Nelson.
- [gatewayinfo](gatewayinfo.md) - Retourne des informations sur une gateway.
- [getmodules](getmodules.md) - Renvoie la liste des modules chargés dans Nelson.
- [ismodule](ismodule.md) - Vérifie si un module est chargé.
- [module.json](module-json.md) - Description du fichier module.json
- [modulepath](modulepath.md) - Renvoie le chemin d'un module.
- [nmm](nmm.md) - Gestionnaire de modules Nelson.
- [nmm_build_help](nmm_build_help.md) - fonction d'aide pour générer l'aide d'un module externe
- [nmm_build_loader](nmm_build_loader.md) - fonction d'aide pour générer le loader principal (loader.m) d'un module externe
- [removegateway](removegateway.md) - Supprime dynamiquement un builtin au moment de l'exécution.
- [removemodule](removemodule.md) - Supprime un module de Nelson.
- [requiremodule](requiremodule.md) - Renvoie une erreur si le module n'est pas chargé dans Nelson.
- [semver](semver.md) - gestionnaire de versions sémantiques.
- [toolboxdir](toolboxdir.md) - Renvoie le chemin d'un module.
- [usermodulesdir](usermodulesdir.md) - Renvoie le chemin où les modules externes sont enregistrés.
