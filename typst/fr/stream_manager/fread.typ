#import "nelson_help.typ": *

= fread <stream_manager:fread>

Lire des données en format binaire depuis le fichier spécifié par le descripteur fid.

== Syntaxe

- #raw("res = fread(fid)");
- #raw("res = fread(fid, sz, precision)");
- #raw("res = fread(fid, sz, precision, skip)");
- #raw("res = fread(fid, sz, precision, arch)");
- #raw("res = fread(fid, sz, precision, skip, arch)");
- #raw("[res, count] = fread(fid, sz, precision, skip, arch)");

== Argument d'entrée

/ fid: un descripteur de fichier
/ sz: Dimensions du tableau de sortie : scalaire, \[m,n\] ou \[m, Inf\]
/ precision: classe des valeurs à lire
/ skip: nombre d'octets à ignorer
/ arch: une chaîne spécifiant le format des données du fichier.

== Argument de sortie

/ res: un vecteur de nombres en virgule flottante ou entiers
/ count: nombre d'éléments lus dans res

== Description

Lit des données en format binaire depuis le fichier spécifié par le descripteur fid.

 Architectures supportées :

 #strong[native]; , #strong[n]; : format de la machine courante.

 #strong[ieee-be];, #strong[b]; : IEEE big endian.

 #strong[ieee-le];, #strong[l]; : IEEE little endian.

 L'encodage des caractères utilise le paramètre #strong[fopen];.


== Exemples

``````matlab

A = rand(3,1)
fileID = fopen([tempdir(), 'doubledata.bin'],'w');
fwrite(fileID, A,'double');
fclose(fileID);

fileID = fopen([tempdir(), 'doubledata.bin'],'r');
R = fread(fileID, 'double')
fclose(fileID);

``````

``````matlab

fileID = fopen([tempdir(), 'uint16nine.bin'],'w');
fwrite(fileID,[1:9],'uint16');
fclose(fileID);

fileID = fopen([tempdir(), 'uint16nine.bin'],'r');
A = fread(fileID,[4,Inf],'uint16')
fclose(fileID);

``````


== Voir aussi

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fwrite>)[fwrite];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
