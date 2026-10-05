#import "nelson_help.typ": *

= Gestion des flux

Le module Stream Manager fournit des outils pour gerer les flux d'entree et de sortie dans Nelson.

 Il prend en charge la lecture et l'ecriture de donnees texte et binaires dans des fichiers, la gestion des positions dans les fichiers, la detection de la fin de fichier et la gestion des erreurs de fichier.

 Le module gere aussi la journalisation de session ainsi que le chargement et la sauvegarde des donnees de l'espace de travail.

== Functions

- #nlink(<stream_manager:cprintf>)[cprintf]: Ecrit du texte formatte et style vers stdout.
- #nlink(<stream_manager:diary>)[diary]: Journal d'une session.
- #nlink(<stream_manager:fclose>)[fclose]: Ferme un fichier ouvert.
- #nlink(<stream_manager:feof>)[feof]: Teste la fin de fichier.
- #nlink(<stream_manager:ferror>)[ferror]: Test des erreurs d'E\/S lecture\/écriture.
- #nlink(<stream_manager:fgetl>)[fgetl]: Lire une chaîne depuis un fichier sans le caractère de nouvelle ligne.
- #nlink(<stream_manager:fgets>)[fgets]: Lire une chaîne depuis un fichier, s'arrêtant après un saut de ligne, la fin du fichier ou après n caractères lus.
- #nlink(<stream_manager:fileread>)[fileread]: Lire le contenu d'un fichier en tant que texte.
- #nlink(<stream_manager:filewrite>)[filewrite]: Écrire du texte dans un fichier.
- #nlink(<stream_manager:fopen>)[fopen]: Ouvrir un fichier dans Nelson.
- #nlink(<stream_manager:fprintf>)[fprintf]: Écrit des données dans un fichier.
- #nlink(<stream_manager:fread>)[fread]: Lire des données en format binaire depuis le fichier spécifié par le descripteur fid.
- #nlink(<stream_manager:frewind>)[frewind]: Positionne le flux au début du fichier.
- #nlink(<stream_manager:fscanf>)[fscanf]: Lit des données depuis un fichier.
- #nlink(<stream_manager:fseek>)[fseek]: Positionne le pointeur de fichier à un emplacement.
- #nlink(<stream_manager:fsize>)[fsize]: Retourne la taille d'un fichier ouvert.
- #nlink(<stream_manager:ftell>)[ftell]: Retourne le décalage de l'octet courant par rapport au début d'un fichier.
- #nlink(<stream_manager:fwrite>)[fwrite]: Écrire des données en binaire dans le fichier spécifié par le descripteur fid.
- #nlink(<stream_manager:load>)[load]: Charge des donnees depuis un fichier .nh5 ou .mat dans l'espace de travail de Nelson.
- #nlink(<stream_manager:readlines>)[readlines]: Lire les lignes d'un fichier texte en tableau de chaînes.
- #nlink(<stream_manager:save>)[save]: enregistrer des variables de l'espace de travail dans un fichier .nh5 ou .mat
- #nlink(<stream_manager:sscanf>)[sscanf]: Lire des données formatées depuis des chaînes.
- #nlink(<stream_manager:textscan>)[textscan]: Lit des données formatées depuis une chaîne ou un fichier.


#nested[
#pagebreak(weak: true)
#include "cprintf.typ"
#pagebreak(weak: true)
#include "diary.typ"
#pagebreak(weak: true)
#include "fclose.typ"
#pagebreak(weak: true)
#include "feof.typ"
#pagebreak(weak: true)
#include "ferror.typ"
#pagebreak(weak: true)
#include "fgetl.typ"
#pagebreak(weak: true)
#include "fgets.typ"
#pagebreak(weak: true)
#include "fileread.typ"
#pagebreak(weak: true)
#include "filewrite.typ"
#pagebreak(weak: true)
#include "fopen.typ"
#pagebreak(weak: true)
#include "fprintf.typ"
#pagebreak(weak: true)
#include "fread.typ"
#pagebreak(weak: true)
#include "frewind.typ"
#pagebreak(weak: true)
#include "fscanf.typ"
#pagebreak(weak: true)
#include "fseek.typ"
#pagebreak(weak: true)
#include "fsize.typ"
#pagebreak(weak: true)
#include "ftell.typ"
#pagebreak(weak: true)
#include "fwrite.typ"
#pagebreak(weak: true)
#include "load.typ"
#pagebreak(weak: true)
#include "readlines.typ"
#pagebreak(weak: true)
#include "save.typ"
#pagebreak(weak: true)
#include "sscanf.typ"
#pagebreak(weak: true)
#include "textscan.typ"
]
