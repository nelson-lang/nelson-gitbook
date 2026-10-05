#import "nelson_help.typ": *

= fwrite <stream_manager:fwrite>

Écrire des données en binaire dans le fichier spécifié par le descripteur fid.

== Syntaxe

- #raw("count = fwrite(fid, data)");
- #raw("count = fwrite(fid, data, precision)");
- #raw("count = fwrite(fid, data, precision, skip)");
- #raw("count = fwrite(fid, data, precision, skip, arch)");
- #raw("count = fwrite(fid, data, precision, arch)");
- #raw("[count, bytes] = fwrite(fid, ...)");

== Argument d'entrée

/ fid: un descripteur de fichier
/ data: données à écrire
/ precision: classe des valeurs à écrire
/ skip: nombre d'octets à ignorer
/ arch: une chaîne spécifiant le format des données pour le fichier.

== Argument de sortie

/ count: -1 ou nombre d'éléments écrits
/ bytes: nombre d'octets écrits

== Description

Écrit des données en format binaire dans le fichier spécifié par le descripteur fid.

 L'encodage des caractères utilise le paramètre #strong[fopen];.

 Architectures supportées :

 #strong[native]; , #strong[n]; : format de la machine courante.

 #strong[ieee-be];, #strong[b]; : IEEE big endian.

 #strong[ieee-le];, #strong[l]; : IEEE little endian.

 précision supportée :

 

#table(
  columns: 3,
  [Type valeur], [Précision], [Bits (Octets)], 
  [Logical], ['logical'], [platform-dependent], 
  table.cell(rowspan: 2)[nombre à virgule flottante], ['double', 'real\*8', 'float64'], [64 (8)], 
  ['single', 'real\*4', 'float32'], [32 (4)], 
  table.cell(rowspan: 5)[Integers, signed], ['int'], [32 (4)], 
  ['int8', 'integer\*1', 'schar'], [8 (1)], 
  ['int16', 'integer\*2'], [16 (2)], 
  ['int32', 'integer\*4'], [32 (4)], 
  ['int64', 'integer\*8'], [64 (8)], 
  table.cell(rowspan: 4)[Entiers, non signés], ['uint8', 'uchar'], [8 (1)], 
  ['uint16'], [16 (2)], 
  ['uint32'], [32 (4)], 
  ['uint64'], [64 (8)], 
  table.cell(rowspan: 2)[Caractères], ['char', '\*char'], [dépend de l'encodage avec fopen.], 
  ['char\*1'], [dépend de l'encodage avec fopen.], 
)


 if #strong[fwrite]; échoue, il renvoie une valeur négative.

 if #strong[fwrite]; réussit, il renvoie le nombre d'éléments écrits avec succès.

 if #strong[fwrite]; écrit des caractères, il renvoie le nombre de caractères écrits avec succès et non le nombre d'éléments.


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

test_string =  'é ö ä ü è ê';
fid = fopen([tempdir(), 'fwrite_example_char.txt'], 'w','n', 'UTF-8');
[count, bytes] = fwrite(fid, test_string) % returns 11 and 17
fclose(fid);
% Il s'agit du nombre de caractères écrits et non du nombre d'octets.
% Chaque caractère accentué (é, ö, ä, ü, è, ê) = 2 octets chacun
% Chaque espace = 1 octet
% Total octets = 6*2 + 5*1 = 17 octets

``````


== Voir aussi

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fread>)[fread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
