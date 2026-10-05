#import "nelson_help.typ": *

= fgets <stream_manager:fgets>

Lire une chaîne depuis un fichier, s'arrêtant après un saut de ligne, la fin du fichier ou après n caractères lus.

== Syntaxe

- #raw("res = fgets(f)");
- #raw("res = fgets(f, n)");

== Argument d'entrée

/ f: un descripteur de fichier
/ n: un scalaire : nombre de caractères

== Argument de sortie

/ res: une chaîne ou -1

== Description

Lit une chaîne depuis un fichier, s'arrêtant après un saut de ligne, la fin du fichier (EOF) ou après la lecture de n caractères.

 S'il n'y a plus de caractère à lire, #strong[fgets]; renverra -1.

 Si n est omis, #strong[fgets]; lit jusqu'au saut de ligne suivant.

 L'encodage des caractères utilise le paramètre #strong[fopen];.


== Exemples

``````matlab
  fid = fopen([nelsonroot(), '/etc/startup.m']);
  tline = fgets(fid);
  while ischar(tline)
  disp(tline)
  tline = fgets(fid);
  end

  fclose(fid);
``````

``````matlab
fid = fopen([nelsonroot(), '/etc/startup.m']);

  tline = fgets(fid, 5);
  while ischar(tline)
  disp(tline)
  tline = fgets(fid, 5);
  end

  fclose(fid);
``````


== Voir aussi

#nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fgetl>)[fgetl];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
