#import "nelson_help.typ": *

= Fonctions du système d'exploitation

Le module Fonctions OS fournit des outils pour interagir avec le système d'exploitation dans Nelson.

 Il inclut des fonctions pour interroger les informations système, gérer les variables d'environnement, exécuter des commandes shell, générer des GUID et effectuer des opérations spécifiques à la plateforme.

 Ce module permet aux scripts Nelson d'interagir avec le système d'exploitation sous-jacent sur Windows, macOS et Linux\/Unix.

== Functions

- #nlink(<os_functions:cmdsep>)[cmdsep]: Séparateur de commande pour le système d'exploitation courant.
- #nlink(<os_functions:computer>)[computer]: Informations sur le système.
- #nlink(<os_functions:createGUID>)[createGUID]: Crée un GUID.
- #nlink(<os_functions:dos>)[dos]: Executer une commande avec l'interpreteur du systeme d'exploitation.
- #nlink(<os_functions:getenv>)[getenv]: Obtenir la valeur d'une variable d'environnement.
- #nlink(<os_functions:hostname>)[hostname]: obtenir le nom d'hôte de cet ordinateur.
- #nlink(<os_functions:isenv>)[isenv]: Determine si une variable d'environnement existe.
- #nlink(<os_functions:ismac>)[ismac]: Vérifie si la version est pour la plateforme macOS.
- #nlink(<os_functions:ispc>)[ispc]: Vérifie si la version est pour la plateforme Windows.
- #nlink(<os_functions:isunix>)[isunix]: Vérifie si la version est pour une plateforme GNU\/Linux ou Unix.
- #nlink(<os_functions:iswasm>)[iswasm]: Vérifie si la version est pour la plateforme WebAssembly.
- #nlink(<os_functions:loadenv>)[loadenv]: Charger les variables d'environnement définies dans des fichiers .env ou des fichiers texte ordinaires.
- #nlink(<os_functions:searchenv>)[searchenv]: Recherche un fichier en utilisant les chemins définis dans une variable d'environnement.
- #nlink(<os_functions:setenv>)[setenv]: Definir ou supprimer une variable d'environnement.
- #nlink(<os_functions:system>)[system]: Exécution de commandes shell.
- #nlink(<os_functions:system>)[dos]: Exécution de commandes shell.
- #nlink(<os_functions:system>)[unix]: Exécution de commandes shell.
- #nlink(<os_functions:unix>)[unix]: Executer des commandes avec l'interpreteur du systeme d'exploitation.
- #nlink(<os_functions:unsetenv>)[unsetenv]: Supprime une variable d'environnement.
- #nlink(<os_functions:username>)[username]: obtenir le nom d'utilisateur courant.
- #nlink(<os_functions:winopen>)[winopen]: Ouvrir un fichier dans l'application appropriée (Windows seulement).
- #nlink(<os_functions:winqueryreg>)[winqueryreg]: Lire le registre Windows (Windows seulement).


#nested[
#pagebreak(weak: true)
#include "cmdsep.typ"
#pagebreak(weak: true)
#include "computer.typ"
#pagebreak(weak: true)
#include "createGUID.typ"
#pagebreak(weak: true)
#include "dos.typ"
#pagebreak(weak: true)
#include "getenv.typ"
#pagebreak(weak: true)
#include "hostname.typ"
#pagebreak(weak: true)
#include "isenv.typ"
#pagebreak(weak: true)
#include "ismac.typ"
#pagebreak(weak: true)
#include "ispc.typ"
#pagebreak(weak: true)
#include "isunix.typ"
#pagebreak(weak: true)
#include "iswasm.typ"
#pagebreak(weak: true)
#include "loadenv.typ"
#pagebreak(weak: true)
#include "searchenv.typ"
#pagebreak(weak: true)
#include "setenv.typ"
#pagebreak(weak: true)
#include "system.typ"
#pagebreak(weak: true)
#include "unix.typ"
#pagebreak(weak: true)
#include "unsetenv.typ"
#pagebreak(weak: true)
#include "username.typ"
#pagebreak(weak: true)
#include "winopen.typ"
#pagebreak(weak: true)
#include "winqueryreg.typ"
]
