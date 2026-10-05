#import "nelson_help.typ": *

= history <history_manager:history>

gestionnaire d'historique.

== Syntaxe

- #raw("history()");
- #raw("c = history()");
- #raw("s = history('size')");
- #raw("f = history('filename')");
- #raw("l = history('enable_save')");
- #raw("c = history('get')");
- #raw("history('display')");
- #raw("history('save')");
- #raw("history('load')");
- #raw("history('clear')");
- #raw("history('duplicated')");
- #raw("history('saveafter')");
- #raw("history('removeexit')");
- #raw("history('size', new_size)");
- #raw("history('enable_save', true_false)");
- #raw("history('delete', lines)");
- #raw("history('append', str)");
- #raw("history('filename', name)");
- #raw("history('load', filename_history)");
- #raw("history('save', filename_history)");
- #raw("history('duplicated', true_false)");
- #raw("history('removeexit', true_false)");
- #raw("history('get', lines)");
- #raw("history('saveafter', nb_commands)");

== Argument d'entrée

/ new\_size: un entier : nouvelle taille maximale de l'historique.
/ true\_false: un booléen.
/ lines: un entier ou un vecteur de taille 1x2.
/ str: une chaîne.
/ name: une chaîne : nouveau nom de fichier par défaut pour l'historique
/ filename\_history: une chaîne : nom de fichier
/ nb\_commands: un entier : nombre de commandes.

== Argument de sortie

/ c: un tableau (cell) de chaînes.
/ l: un booléen.
/ s: un entier.
/ f: une chaîne.

== Description

#strong[history()]; affiche l'historique actuel de Nelson.

 #strong[c \= history()]; renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes.

 #strong[s \= history('size')]; renvoie la taille maximale de l'historique.

 #strong[f \= history('filename')]; renvoie le nom de fichier de l'historique.

 #strong[l \= history('enable\_save')]; renvoie l'état du gestionnaire d'historique.

 #strong[c \= history('get')]; renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes.

 #strong[history('display')]; affiche l'historique actuel de Nelson.

 #strong[history('save')]; enregistre le fichier d'historique courant.

 #strong[history('load')]; charge le fichier d'historique courant.

 #strong[history('clear')]; efface l'historique.

 #strong[history('duplicated')]; obtient l'état concernant la sauvegarde des commandes consécutives dupliquées.

 #strong[history('saveafter')]; obtient l'état concernant la sauvegarde de l'historique après N commandes.

 #strong[history('removeexit')]; obtient l'état concernant la non-enregistrement des sorties dans le fichier d'historique.

 #strong[history('size', new\_size)]; définit la taille maximale de l'historique avec#strong[new\_size];.

 #strong[history('enable\_save', true\_false)]; définit l'état du gestionnaire d'historique : false pour 'off', true pour 'on'.

 #strong[history('delete', lines)]; supprime des lignes par index : un scalaire ou un vecteur 1x2.

 #strong[history('append', str)]; ajoute une commande à l'historique.

 #strong[history('filename', name)]; définit le nom de fichier de l'historique.

 #strong[history('load', filename\_history)]; charge un fichier d'historique.

 #strong[history('save', filename\_history)]; enregistre un fichier d'historique.

 #strong[history('duplicated', true\_false)]; définit l'état concernant les commandes consécutives dupliquées : true supprime les doublons.

 #strong[history('removeexit', true\_false)]; définit l'état concernant la non-enregistrement des sorties dans le fichier d'historique.

 #strong[history('get', lines)]; renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes par index : un scalaire ou un vecteur 1x2.

 #strong[history('saveafter', nb\_commands)]; enregistre le fichier d'historique après que #strong[nb\_commands]; instructions aient été ajoutées au fichier.

 #strong[Astuces]; : vous pouvez facilement partager votre fichier d'historique dans le cloud en ajoutant quelques lignes de code dans votre fichier de démarrage utilisateur.

 Si Nelson est lancé avec l'option '--nouserstartup', le fichier d'historique ne sera pas chargé au démarrage et ne sera pas enregistré à la fermeture.


== Exemples

Example to share your history file in OneDrive cloud

``````matlab
OneDrivePath = getenv('OneDrive');
if (strcmp(OneDrivePath, '') == false)
  NelsonOneDrivePath = [OneDrivePath, '/Nelson'];
  mkdir(NelsonOneDrivePath);
  NelsonOneDrivePathFilename = [NelsonOneDrivePath, '/', 'Nelson.history'];
 history('filename', NelsonOneDrivePathFilename);
  history('load', NelsonOneDrivePathFilename);
end
``````

``````matlab
history()
c = history()
``````


== Voir aussi

#nlink(<stream_manager:diary>)[diary];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
