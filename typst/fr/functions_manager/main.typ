#import "nelson_help.typ": *

= Gestionnaire de fonctions

Le gestionnaire de fonctions fournit des outils pour gérer et interagir avec le chemin de recherche des fonctions de Nelson et les types de fonctions.

 Il comprend des commandes pour ajouter ou supprimer des répertoires du chemin de recherche, exécuter des fonctions intégrées, effacer des fonctions intégrées, évaluer des fonctions, et plus encore.

 Des utilitaires sont disponibles pour vérifier l'existence de fonctions intégrées, macro ou mex.

== Functions

- #nlink(<functions_manager:addpath>)[addpath]: Ajouter des répertoires au chemin de recherche des fonctions.
- #nlink(<functions_manager:builtin>)[builtin]: Exécute une fonction intégrée.
- #nlink(<functions_manager:clearfun>)[clearfun]: Efface une fonction intégrée.
- #nlink(<functions_manager:feval>)[feval]: Évalue une fonction.
- #nlink(<functions_manager:import>)[import]: Importer des noms depuis des espaces de noms.
- #nlink(<functions_manager:inmem>)[inmem]: Noms des fonctions, fichiers MEX.
- #nlink(<functions_manager:isbuiltin>)[isbuiltin]: Vérifie l'existence d'une fonction intégrée.
- #nlink(<functions_manager:ismacro>)[ismacro]: Vérifie l'existence d'une macro (fonction).
- #nlink(<functions_manager:ismex>)[ismex]: Vérifie l'existence d'une fonction mex.
- #nlink(<functions_manager:localfunctions>)[localfunctions]: Retourne les handles des fonctions locales du fichier courant.
- #nlink(<functions_manager:macroargs>)[macroargs]: Retourne les noms des variables d'une fonction.
- #nlink(<functions_manager:path>)[path]: Modifie ou affiche le chemin de chargement de Nelson.
- #nlink(<functions_manager:private_functions>)[private functions]: Fonctions privées.
- #nlink(<functions_manager:rehash>)[rehash]: Réinitialise le cache des répertoires du chemin de recherche de Nelson.
- #nlink(<functions_manager:restoredefaultpath>)[restoredefaultpath]: Restaure le chemin de Nelson à son état initial au démarrage.
- #nlink(<functions_manager:rmpath>)[rmpath]: Supprime un répertoire du chemin de recherche.
- #nlink(<functions_manager:userpath>)[userpath]: Affiche ou modifie le répertoire par défaut des fonctions utilisateur.
- #nlink(<functions_manager:what>)[what]: Obtient la liste des fonctions intégrées et macros de Nelson.
- #nlink(<functions_manager:which>)[which]: Localise les fonctions et intégrées.


#nested[
#pagebreak(weak: true)
#include "addpath.typ"
#pagebreak(weak: true)
#include "builtin.typ"
#pagebreak(weak: true)
#include "clearfun.typ"
#pagebreak(weak: true)
#include "feval.typ"
#pagebreak(weak: true)
#include "import.typ"
#pagebreak(weak: true)
#include "inmem.typ"
#pagebreak(weak: true)
#include "isbuiltin.typ"
#pagebreak(weak: true)
#include "ismacro.typ"
#pagebreak(weak: true)
#include "ismex.typ"
#pagebreak(weak: true)
#include "localfunctions.typ"
#pagebreak(weak: true)
#include "macroargs.typ"
#pagebreak(weak: true)
#include "path.typ"
#pagebreak(weak: true)
#include "private_functions.typ"
#pagebreak(weak: true)
#include "rehash.typ"
#pagebreak(weak: true)
#include "restoredefaultpath.typ"
#pagebreak(weak: true)
#include "rmpath.typ"
#pagebreak(weak: true)
#include "userpath.typ"
#pagebreak(weak: true)
#include "what.typ"
#pagebreak(weak: true)
#include "which.typ"
]
