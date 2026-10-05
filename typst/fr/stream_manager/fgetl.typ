#import "nelson_help.typ": *

= fgetl <stream_manager:fgetl>

Lire une chaîne depuis un fichier sans le caractère de nouvelle ligne.

== Syntaxe

- #raw("res = fgetl(f)");

== Argument d'entrée

/ f: un descripteur de fichier

== Argument de sortie

/ res: une chaîne ou -1

== Description

Lit une chaîne depuis un fichier, s'arrêtant après la lecture d'un saut de ligne ou de la fin du fichier (EOF).

 S'il n'y a plus de caractère à lire, #strong[fgetl]; renverra -1.

 Le caractère de nouvelle ligne est retiré de la chaîne renvoyée.

 L'encodage des caractères utilise le paramètre #strong[fopen];.


== Exemple

``````matlab
fid = fopen([nelsonroot(), '/etc/startup.m']);

tline = fgetl(fid);
while ischar(tline)
    disp(tline)
    tline = fgetl(fid);
end

fclose(fid);
``````


== Voir aussi

#nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fgets>)[fgets];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
