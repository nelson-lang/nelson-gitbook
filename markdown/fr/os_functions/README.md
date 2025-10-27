# Fonctions du système d'exploitation

Le module Fonctions OS fournit des outils pour interagir avec le système d'exploitation dans Nelson.

Il inclut des fonctions pour interroger les informations système, gérer les variables d'environnement, exécuter des commandes shell, générer des GUID et effectuer des opérations spécifiques à la plateforme.

Ce module permet une intégration fluide des scripts Nelson avec le système d'exploitation sous-jacent sur Windows, macOS et Linux/Unix.

## Functions

- [cmdsep](cmdsep.md) - Séparateur de commande pour le système d'exploitation courant.
- [computer](computer.md) - Informations sur le système.
- [createGUID](createGUID.md) - Crée un GUID.
- [getenv](getenv.md) - Obtenir la valeur d'une variable d'environnement.
- [hostname](hostname.md) - obtenir le nom d'hôte de cet ordinateur.
- [ismac](ismac.md) - Vérifie si la version est pour la plateforme macOS.
- [ispc](ispc.md) - Vérifie si la version est pour la plateforme Windows.
- [isunix](isunix.md) - Vérifie si la version est pour une plateforme GNU/Linux ou Unix.
- [searchenv](searchenv.md) - Recherche un fichier en utilisant les chemins définis dans une variable d'environnement.
- [setenv](setenv.md) - Définir la valeur d'une variable d'environnement.
- [system](system.md) - Exécution de commandes shell.
- [dos](system.md) - Exécution de commandes shell.
- [unix](system.md) - Exécution de commandes shell.
- [username](username.md) - obtenir le nom d'utilisateur courant.
- [winopen](winopen.md) - Ouvrir un fichier dans l'application appropriée (Windows seulement).
- [winqueryreg](winqueryreg.md) - Lire le registre Windows (Windows seulement).
