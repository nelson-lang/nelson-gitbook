#import "nelson_help.typ": *

= diary <stream_manager:diary>

Journal d'une session.

== Syntaxe

- #raw("diary()");
- #raw("diary(filename)");
- #raw("diary('off')");
- #raw("diary('on')");
- #raw("onoff = diary('get', 'Diary')");
- #raw("filename = diary('get', 'DiaryFile')");
- #raw("diary('set', 'DiaryFile', filename)");
- #raw("diary('set', 'Diary', onoff)");

== Argument d'entrée

/ onoff: une chaîne : 'on' ou 'off'.
/ filename: une chaîne : nom de fichier du journal courant.

== Argument de sortie

/ onoff: une chaîne : 'on' ou 'off'.
/ filename: une chaîne : nom de fichier à utiliser pour le journal.

== Description

#strong[diary]; crée un journal des entrées clavier et du texte de sortie résultant.

 #strong[diary]; active ou désactive le mode journal.

 #strong[diary('off')]; arrête l'enregistrement de la session dans le fichier journal.

 #strong[diary('on')]; commence l'enregistrement d'une session dans un fichier nommé 'diary' dans le répertoire de travail courant.

 #strong[diary('set', 'Diary', onoff)]; permet de démarrer ou d'arrêter le journal.

 #strong[onoff \= diary('get', 'Diary')]; renvoie l'état 'on' ou 'off' du journal.

 #strong[diary(filename)]; enregistre la session dans le fichier nommé filename.

 #strong[filename \= diary('get', 'DiaryFile')]; renvoie le nom de fichier utilisé pour le journal.

 #strong[diary('set', 'DiaryFile', filename))]; définit le nom de fichier pour le journal.


== Exemple

``````matlab
filename = diary('get', 'DiaryFile')
onoff = diary('get', 'Diary')
``````


== Voir aussi

#nlink(<history_manager:history>)[history];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
