#import "nelson_help.typ": *

= Fonctions de fichiers et dossiers

Le module Fichiers et Dossiers fournit des outils pour gérer les fichiers, répertoires et chemins dans Nelson.

 Ce module prend en charge la navigation du système de fichiers, la création et la suppression de fichiers et répertoires, l'interrogation des propriétés, la construction et la résolution de chemins, ainsi que la gestion des séparateurs spécifiques à la plateforme.

 Ce module permet des opérations sur le système de fichiers efficaces et multi-plateformes dans les scripts et applications Nelson.

== Functions

- #nlink(<files_folders_functions:cd>)[cd]: Change le répertoire courant de Nelson.
- #nlink(<files_folders_functions:copyfile>)[copyfile]: Copie des fichiers ou des dossiers.
- #nlink(<files_folders_functions:diff_file>)[diff\_file]: Compare deux fichiers ou chaînes.
- #nlink(<files_folders_functions:dir>)[dir]: Renvoie la liste des fichiers.
- #nlink(<files_folders_functions:fileparts>)[fileparts]: Renvoie le chemin, le nom de fichier et l'extension d'un chemin de fichier.
- #nlink(<files_folders_functions:filesep>)[filesep]: Renvoie le caractère séparateur de fichiers pour la plateforme courante.
- #nlink(<files_folders_functions:fullfile>)[fullfile]: Construit un nom de fichier complet à partir de ses parties.
- #nlink(<files_folders_functions:fullpath>)[fullpath]: Renvoie le chemin absolu canonique.
- #nlink(<files_folders_functions:genpath>)[genpath]: Genere une chaine de chemin recursive.
- #nlink(<files_folders_functions:isdir>)[isdir]: Retourne vrai si l'argument est un répertoire.
- #nlink(<files_folders_functions:isfile>)[isfile]: Retourne vrai si l'argument est un fichier.
- #nlink(<files_folders_functions:isfolder>)[isfolder]: Retourne vrai si l'argument est un répertoire.
- #nlink(<files_folders_functions:ls>)[ls]: Liste le contenu d'un répertoire.
- #nlink(<files_folders_functions:mkdir>)[mkdir]: Crée un nouveau répertoire.
- #nlink(<files_folders_functions:movefile>)[movefile]: Deplace un fichier ou un dossier.
- #nlink(<files_folders_functions:pathsep>)[pathsep]: Renvoie le caractère séparateur de chemins pour la plateforme courante.
- #nlink(<files_folders_functions:pwd>)[pwd]: Renvoie le répertoire courant.
- #nlink(<files_folders_functions:relativepath>)[relativepath]: Renvoie le chemin relatif d'un chemin actuel vers un chemin cible.
- #nlink(<files_folders_functions:rmdir>)[rmdir]: Supprime un répertoire.
- #nlink(<files_folders_functions:rmfile>)[rmfile]: Supprime un fichier.
- #nlink(<files_folders_functions:tempdir>)[tempdir]: Renvoie le chemin du répertoire temporaire.
- #nlink(<files_folders_functions:tempname>)[tempname]: Renvoie un nom de fichier temporaire unique.
- #nlink(<files_folders_functions:userdir>)[userdir]: Renvoie le chemin du répertoire utilisateur courant.


#nested[
#pagebreak(weak: true)
#include "cd.typ"
#pagebreak(weak: true)
#include "copyfile.typ"
#pagebreak(weak: true)
#include "diff_file.typ"
#pagebreak(weak: true)
#include "dir.typ"
#pagebreak(weak: true)
#include "fileparts.typ"
#pagebreak(weak: true)
#include "filesep.typ"
#pagebreak(weak: true)
#include "fullfile.typ"
#pagebreak(weak: true)
#include "fullpath.typ"
#pagebreak(weak: true)
#include "genpath.typ"
#pagebreak(weak: true)
#include "isdir.typ"
#pagebreak(weak: true)
#include "isfile.typ"
#pagebreak(weak: true)
#include "isfolder.typ"
#pagebreak(weak: true)
#include "ls.typ"
#pagebreak(weak: true)
#include "mkdir.typ"
#pagebreak(weak: true)
#include "movefile.typ"
#pagebreak(weak: true)
#include "pathsep.typ"
#pagebreak(weak: true)
#include "pwd.typ"
#pagebreak(weak: true)
#include "relativepath.typ"
#pagebreak(weak: true)
#include "rmdir.typ"
#pagebreak(weak: true)
#include "rmfile.typ"
#pagebreak(weak: true)
#include "tempdir.typ"
#pagebreak(weak: true)
#include "tempname.typ"
#pagebreak(weak: true)
#include "userdir.typ"
]
